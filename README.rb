=================== OReilly.Learning.AngularJS.pdf chepter 11 =================
1. >git clone https://github.com/KenWilliamson/NodeMeanBlog_for_LearningAngularJS.git
2. install NetBeans, open project "NodeBlog", execute, see Login page
3. will (a)  building a MEAN stack Blog App, deploy to a free account on RedHat’s OpenShift platform
          (b)  build mobile HTML5 version of our app, will run on any mobile device and can be distributed
                through the respective mobile application stores. 
 4. set up a local project in NetBeans that we will later use to deploy our blog to OpenShift.   
install Node.js, npm, and MongoDB ( www.mongodb.org)  
----------------------------- Installing the NetBeans Node.js Plugin  ------------------------------
Now we will install a Node.js plugin for NetBeans to simplify our interaction with
Node.js. Do the following:
1. Follow the directions on Tim Boudreau’s blog.
(https://timboudreau.com/blog/NetBeans_Tools_for_Node_js/read)
NetBeans Tools for Node.js
NetBeans plugin for node.js - sources are on Github.
The easy way to get this plugin is the timboudreau.com update server.
What it gives you:
A Node project type
Clickable stack traces in the output window
A run with node action on Javascript files (and of course, the project)
Integration with Node Package Manager (npm) and a slick little UI for adding libraries
GUI for editing package.json files, and generating their standard contents
Ability to store machine-specific command-line arguments 
(excluded from version control if you use NetBeans' version control).
Ability to download Node's sources so the highlighted stack traces point somewhere
2. Download and install the plugin.
3. Configure the plugin as specified
   
------------------------------------- npm install -------------------------
There is one small command-line task that needs to be performed before you can run
the blog application locally. This is standard practice when working with Node.js. Do
the following:
1. Open a command window and navigate to the location on your drive where you
unzipped the NodeBlog project.
2. You should see the package.json file at that location.
3. In the command window, do the following:
a. Type npm install.
b. Press Enter.
This command uses npm to install all the blog application dependencies. If the instal‐
lation was successful, you should see all the required Node.js packages installed in the
current directory under a new folder named node_modules.
When you run the npm install command, npm reads the package.json file and
installs all the required packages that are defined in that file. If there were errors and
the new folder didn’t get created, there is a problem with the Node.js installation on
your machine. Once you have the required Node.js packages installed in your project,
you are ready to run the project.
---------------------------------------------p.187 Blog Login ----------------------------
Right-click the NodeBlog project and select “Run” from the menu. You should see a
small indicator at the bottom right of NetBeans, as shown in Figure 11-2. If you see
“Running,” your project and Node.js are installed correctly. Open a browser and navi‐
gate to http://localhost:8080, and you should see the login screen as before.
(http://localhost:8383/LearningAngularJS_chapter11/index.html#!/login)
Log in with the following credentials:
• username = “node”
• password = “password”
The application should perform just as it did before. 
server.js:
var un = 'node';//change this to something private
var pw = 'password';//change this to something private
----------------------------------- p.196 MEAN Deployment to the Cloud -----------------
with a built-in version of Git that is very easy to configure and use when you’re
deploying to OpenShift. First you must open a free OpenShift account, which gives
you three free gears (cloud server instances) that can run Node.js. Do the following:
1. Go to https://www.openshift.com/app/account/new and create a new account.
2. Click the “Add Application” button and create a new Node.js 0.10 application
(save a copy of the page for reference later).
3. Add a MongoDB cartridge to the application (save a copy of the page for refer‐
ence later).
4. Follow the OpenShift documentation and set up Git on your development envi‐
ronment. You’ll need a public SSH key to use Git on the OpenShift system.
5. Once Git is configured, clone the application with Git to a location on your drive
separate from the location where you unzipped the NodeBlog download.
6. Open the new OpenShift project, and copy the following files from the NodeBlog
project to the new OpenShift project, replacing the existing versions:
a. package.json
b. server.js
7. Copy the public folder from the NodeBlog project to the new OpenShift project.
8. Copy the db folder from the NodeBlog project to the new OpenShift project.
