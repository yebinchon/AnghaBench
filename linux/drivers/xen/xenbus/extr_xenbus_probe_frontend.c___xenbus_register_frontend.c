
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_driver {int read_otherend_details; } ;
struct module {int dummy; } ;


 int read_backend_details ;
 int wait_for_devices (struct xenbus_driver*) ;
 int xenbus_frontend ;
 int xenbus_register_driver_common (struct xenbus_driver*,int *,struct module*,char const*) ;

int __xenbus_register_frontend(struct xenbus_driver *drv, struct module *owner,
          const char *mod_name)
{
 int ret;

 drv->read_otherend_details = read_backend_details;

 ret = xenbus_register_driver_common(drv, &xenbus_frontend,
         owner, mod_name);
 if (ret)
  return ret;


 wait_for_devices(drv);

 return 0;
}
