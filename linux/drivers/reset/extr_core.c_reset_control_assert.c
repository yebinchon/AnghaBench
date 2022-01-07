
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reset_control {int id; TYPE_2__* rcdev; int acquired; int deassert_count; int triggered_count; scalar_t__ shared; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* assert ) (TYPE_2__*,int ) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 int EPERM ;
 int IS_ERR (struct reset_control*) ;
 int WARN (int,char*,int ,int ) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int rcdev_name (TYPE_2__*) ;
 int reset_control_array_assert (int ) ;
 scalar_t__ reset_control_is_array (struct reset_control*) ;
 int rstc_to_array (struct reset_control*) ;
 int stub1 (TYPE_2__*,int ) ;

int reset_control_assert(struct reset_control *rstc)
{
 if (!rstc)
  return 0;

 if (WARN_ON(IS_ERR(rstc)))
  return -EINVAL;

 if (reset_control_is_array(rstc))
  return reset_control_array_assert(rstc_to_array(rstc));

 if (rstc->shared) {
  if (WARN_ON(atomic_read(&rstc->triggered_count) != 0))
   return -EINVAL;

  if (WARN_ON(atomic_read(&rstc->deassert_count) == 0))
   return -EINVAL;

  if (atomic_dec_return(&rstc->deassert_count) != 0)
   return 0;





  if (!rstc->rcdev->ops->assert)
   return 0;
 } else {





  if (!rstc->rcdev->ops->assert)
   return -ENOTSUPP;

  if (!rstc->acquired) {
   WARN(1, "reset %s (ID: %u) is not acquired\n",
        rcdev_name(rstc->rcdev), rstc->id);
   return -EPERM;
  }
 }

 return rstc->rcdev->ops->assert(rstc->rcdev, rstc->id);
}
