
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_driver {int read_otherend_details; } ;
struct module {int dummy; } ;


 int read_frontend_details ;
 int xenbus_backend ;
 int xenbus_register_driver_common (struct xenbus_driver*,int *,struct module*,char const*) ;

int __xenbus_register_backend(struct xenbus_driver *drv, struct module *owner,
         const char *mod_name)
{
 drv->read_otherend_details = read_frontend_details;

 return xenbus_register_driver_common(drv, &xenbus_backend,
          owner, mod_name);
}
