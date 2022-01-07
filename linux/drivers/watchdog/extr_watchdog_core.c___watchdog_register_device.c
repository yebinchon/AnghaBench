
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int notifier_call; } ;
struct watchdog_device {int id; TYPE_3__ restart_nb; TYPE_2__* ops; TYPE_1__* parent; int max_hw_heartbeat_ms; int * info; } ;
struct TYPE_5__ {scalar_t__ restart; int stop; int start; } ;
struct TYPE_4__ {int of_node; } ;


 int EBUSY ;
 int EINVAL ;
 int GFP_KERNEL ;
 int MAX_DOGS ;
 int ida_simple_get (int *,int,int,int ) ;
 int ida_simple_remove (int *,int) ;
 int of_alias_get_id (int ,char*) ;
 int pr_warn (char*,int,int) ;
 int register_restart_handler (TYPE_3__*) ;
 int watchdog_check_min_max_timeout (struct watchdog_device*) ;
 int watchdog_dev_register (struct watchdog_device*) ;
 int watchdog_ida ;
 int watchdog_restart_notifier ;

__attribute__((used)) static int __watchdog_register_device(struct watchdog_device *wdd)
{
 int ret, id = -1;

 if (wdd == ((void*)0) || wdd->info == ((void*)0) || wdd->ops == ((void*)0))
  return -EINVAL;


 if (!wdd->ops->start || (!wdd->ops->stop && !wdd->max_hw_heartbeat_ms))
  return -EINVAL;

 watchdog_check_min_max_timeout(wdd);
 if (wdd->parent) {
  ret = of_alias_get_id(wdd->parent->of_node, "watchdog");
  if (ret >= 0)
   id = ida_simple_get(&watchdog_ida, ret,
         ret + 1, GFP_KERNEL);
 }

 if (id < 0)
  id = ida_simple_get(&watchdog_ida, 0, MAX_DOGS, GFP_KERNEL);

 if (id < 0)
  return id;
 wdd->id = id;

 ret = watchdog_dev_register(wdd);
 if (ret) {
  ida_simple_remove(&watchdog_ida, id);
  if (!(id == 0 && ret == -EBUSY))
   return ret;


  id = ida_simple_get(&watchdog_ida, 1, MAX_DOGS, GFP_KERNEL);
  if (id < 0)
   return id;
  wdd->id = id;

  ret = watchdog_dev_register(wdd);
  if (ret) {
   ida_simple_remove(&watchdog_ida, id);
   return ret;
  }
 }

 if (wdd->ops->restart) {
  wdd->restart_nb.notifier_call = watchdog_restart_notifier;

  ret = register_restart_handler(&wdd->restart_nb);
  if (ret)
   pr_warn("watchdog%d: Cannot register restart handler (%d)\n",
    wdd->id, ret);
 }

 return 0;
}
