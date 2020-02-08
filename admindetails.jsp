<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <title>Fashiop</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="vendors/linericon/style.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="vendors/animate-css/animate.css">
    <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body>

    <!--================Header Menu Area =================-->
    <header class="header_area">
        <div class="top_menu row m0">
            <div class="container-fluid">
                <div class="float-left">
                  
                </div>
                <div class="float-right">
                    <ul class="right_side">
                        <li>
                           
                        </li>
                        <li>
                            
                        </li>
                        <li>
                            
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                   <a class="navbar-brand logo_h" href="index.html">
                        <img src="img/logo1.png" alt="">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <div class="row w-100">
                            <div class="col-lg-7 pr-0">
                                <ul class="nav navbar-nav center_nav pull-right">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.html">Home</a>
                                    </li>
                                     <li class="nav-item">
                                                <a class="nav-link" href="single-blog.html">Admin Page</a>
                                            </li>
                                        
                                        
                                           
                                            <li class="nav-item">
                                                <a class="nav-link" href="contact.html">Logout</a>
                                            </li>
                                </ul>
                            </div>

                            <div class="col-lg-5">
                                <ul class="nav navbar-nav navbar-right right_nav pull-right">
                                    <hr>
                                    <li class="nav-item">
                                        <a href="#" class="icons">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </a>
                                    </li>

                                    <hr>

                                    <li class="nav-item">
                                        <a href="#" class="icons">
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                        </a>
                                    </li>

                                    <hr>

                                    <li class="nav-item">
                                        <a href="#" class="icons">
                                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                                        </a>
                                    </li>

                                    <hr>

                                    <li class="nav-item">
                                        <a href="#" class="icons">
                                            <i class="lnr lnr lnr-cart"></i>
                                        </a>
                                    </li>

                                    <hr>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>User Details</h2>
                    <div class="page_link">
                        <a href="index.html">Home</a>
                        <a href="tracking.html">User Details</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  
  <table class="table">
    <thead>
      <tr>
        <th>Admin email</th>
      </tr>
    </thead>
   <%
 
	try{
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("connection to database");
	Connection Conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/inventory_data","root","admin");
	Statement stmt=Conn.createStatement();
	HttpSession session1=request.getSession();
	String email=(String)session1.getAttribute("email");
	System.out.println("email is"+email);
	ResultSet rs=stmt.executeQuery("select * from admin where email='"+email+"'");
	
   while(rs.next())	
   {
	%>
		
	
	<tbody>
      <tr>
        <td><%=rs.getString(1) %></td>
      </tr>
      
    </tbody>
	<%}}
catch(Exception e){
	System.out.println(e);// TODO: handle exception
}%>
    
  </table>
</div>

</body>
</html>
    

   
</body>

</html>