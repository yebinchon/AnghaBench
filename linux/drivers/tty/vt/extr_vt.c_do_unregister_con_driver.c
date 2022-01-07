
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;
struct con_driver {int flag; struct consw const* con; } ;


 int CON_DRIVER_FLAG_ZOMBIE ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int MAX_NR_CON_DRIVER ;
 int con_driver_unregister_work ;
 scalar_t__ con_is_bound (struct consw const*) ;
 struct consw const* conswitchp ;
 struct con_driver* registered_con_driver ;
 int schedule_work (int *) ;

int do_unregister_con_driver(const struct consw *csw)
{
 int i;


 if (con_is_bound(csw))
  return -EBUSY;

 if (csw == conswitchp)
  return -EINVAL;

 for (i = 0; i < MAX_NR_CON_DRIVER; i++) {
  struct con_driver *con_driver = &registered_con_driver[i];

  if (con_driver->con == csw) {
   con_driver->con = ((void*)0);
   con_driver->flag = CON_DRIVER_FLAG_ZOMBIE;
   schedule_work(&con_driver_unregister_work);

   return 0;
  }
 }

 return -ENODEV;
}
