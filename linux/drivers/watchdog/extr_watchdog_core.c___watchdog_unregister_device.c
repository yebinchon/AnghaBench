
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int id; int restart_nb; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ restart; } ;


 int ida_simple_remove (int *,int ) ;
 int unregister_restart_handler (int *) ;
 int watchdog_dev_unregister (struct watchdog_device*) ;
 int watchdog_ida ;

__attribute__((used)) static void __watchdog_unregister_device(struct watchdog_device *wdd)
{
 if (wdd == ((void*)0))
  return;

 if (wdd->ops->restart)
  unregister_restart_handler(&wdd->restart_nb);

 watchdog_dev_unregister(wdd);
 ida_simple_remove(&watchdog_ida, wdd->id);
}
