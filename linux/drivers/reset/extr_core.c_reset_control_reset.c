
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reset_control {int triggered_count; scalar_t__ shared; int id; TYPE_2__* rcdev; int acquired; int deassert_count; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* reset ) (TYPE_2__*,int ) ;} ;


 int EINVAL ;
 int ENOTSUPP ;
 int EPERM ;
 int IS_ERR (struct reset_control*) ;
 scalar_t__ WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int reset_control_array_reset (int ) ;
 scalar_t__ reset_control_is_array (struct reset_control*) ;
 int rstc_to_array (struct reset_control*) ;
 int stub1 (TYPE_2__*,int ) ;

int reset_control_reset(struct reset_control *rstc)
{
 int ret;

 if (!rstc)
  return 0;

 if (WARN_ON(IS_ERR(rstc)))
  return -EINVAL;

 if (reset_control_is_array(rstc))
  return reset_control_array_reset(rstc_to_array(rstc));

 if (!rstc->rcdev->ops->reset)
  return -ENOTSUPP;

 if (rstc->shared) {
  if (WARN_ON(atomic_read(&rstc->deassert_count) != 0))
   return -EINVAL;

  if (atomic_inc_return(&rstc->triggered_count) != 1)
   return 0;
 } else {
  if (!rstc->acquired)
   return -EPERM;
 }

 ret = rstc->rcdev->ops->reset(rstc->rcdev, rstc->id);
 if (rstc->shared && ret)
  atomic_dec(&rstc->triggered_count);

 return ret;
}
