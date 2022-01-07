
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct consw {char* (* con_startup ) () ;struct module* owner; } ;
struct con_driver {int flag; char const* desc; int node; int first; int last; int * dev; struct consw const* con; } ;


 int CON_DRIVER_FLAG_INIT ;
 int CON_DRIVER_FLAG_MODULE ;
 int CON_DRIVER_FLAG_ZOMBIE ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (int *) ;
 int MAX_NR_CON_DRIVER ;
 int MKDEV (int ,int) ;
 int PTR_ERR (int *) ;
 int WARN_CONSOLE_UNLOCKED () ;
 int con_dev_groups ;
 int * device_create_with_groups (int ,int *,int ,struct con_driver*,int ,char*,int) ;
 int module_put (struct module*) ;
 int pr_warn (char*,char const*,int ) ;
 struct con_driver* registered_con_driver ;
 char* stub1 () ;
 int try_module_get (struct module*) ;
 int vtconsole_class ;
 int vtconsole_init_device (struct con_driver*) ;

__attribute__((used)) static int do_register_con_driver(const struct consw *csw, int first, int last)
{
 struct module *owner = csw->owner;
 struct con_driver *con_driver;
 const char *desc;
 int i, retval;

 WARN_CONSOLE_UNLOCKED();

 if (!try_module_get(owner))
  return -ENODEV;

 for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
  con_driver = &registered_con_driver[i];


  if (con_driver->con == csw) {
   retval = -EBUSY;
   goto err;
  }
 }

 desc = csw->con_startup();
 if (!desc) {
  retval = -ENODEV;
  goto err;
 }

 retval = -EINVAL;

 for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
  con_driver = &registered_con_driver[i];

  if (con_driver->con == ((void*)0) &&
      !(con_driver->flag & CON_DRIVER_FLAG_ZOMBIE)) {
   con_driver->con = csw;
   con_driver->desc = desc;
   con_driver->node = i;
   con_driver->flag = CON_DRIVER_FLAG_MODULE |
                      CON_DRIVER_FLAG_INIT;
   con_driver->first = first;
   con_driver->last = last;
   retval = 0;
   break;
  }
 }

 if (retval)
  goto err;

 con_driver->dev =
  device_create_with_groups(vtconsole_class, ((void*)0),
       MKDEV(0, con_driver->node),
       con_driver, con_dev_groups,
       "vtcon%i", con_driver->node);
 if (IS_ERR(con_driver->dev)) {
  pr_warn("Unable to create device for %s; errno = %ld\n",
   con_driver->desc, PTR_ERR(con_driver->dev));
  con_driver->dev = ((void*)0);
 } else {
  vtconsole_init_device(con_driver);
 }

err:
 module_put(owner);
 return retval;
}
