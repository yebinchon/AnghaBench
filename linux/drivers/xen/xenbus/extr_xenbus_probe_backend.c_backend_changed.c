
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_watch {int dummy; } ;


 int DPRINTK (char*) ;
 int xenbus_backend ;
 int xenbus_dev_changed (char const*,int *) ;

__attribute__((used)) static void backend_changed(struct xenbus_watch *watch,
       const char *path, const char *token)
{
 DPRINTK("");

 xenbus_dev_changed(path, &xenbus_backend);
}
