
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rio_switch_ops {int (* clr_table ) (int ,int ,int ,int ) ;int owner; } ;
struct rio_dev {int hopcount; int destid; TYPE_2__* net; TYPE_1__* rswitch; } ;
struct TYPE_4__ {int hport; } ;
struct TYPE_3__ {int lock; struct rio_switch_ops* ops; } ;


 int EINVAL ;
 int module_put (int ) ;
 int rio_lock_device (int ,int ,int ,int) ;
 int rio_std_route_clr_table (int ,int ,int ,int ) ;
 int rio_unlock_device (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ,int ,int ,int ) ;
 scalar_t__ try_module_get (int ) ;

int rio_route_clr_table(struct rio_dev *rdev, u16 table, int lock)
{
 int rc = -EINVAL;
 struct rio_switch_ops *ops = rdev->rswitch->ops;

 if (lock) {
  rc = rio_lock_device(rdev->net->hport, rdev->destid,
         rdev->hopcount, 1000);
  if (rc)
   return rc;
 }

 spin_lock(&rdev->rswitch->lock);

 if (!ops || !ops->clr_table) {
  rc = rio_std_route_clr_table(rdev->net->hport, rdev->destid,
          rdev->hopcount, table);
 } else if (try_module_get(ops->owner)) {
  rc = ops->clr_table(rdev->net->hport, rdev->destid,
        rdev->hopcount, table);

  module_put(ops->owner);
 }

 spin_unlock(&rdev->rswitch->lock);

 if (lock)
  rio_unlock_device(rdev->net->hport, rdev->destid,
      rdev->hopcount);

 return rc;
}
