
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int suspend_state_t ;
struct regulator_state {scalar_t__ enabled; scalar_t__ uV; scalar_t__ mode; } ;
struct regulator_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_suspend_voltage ) (struct regulator_dev*,scalar_t__) ;int (* set_suspend_mode ) (struct regulator_dev*,scalar_t__) ;int (* set_suspend_enable ) (struct regulator_dev*) ;int (* set_suspend_disable ) (struct regulator_dev*) ;} ;


 scalar_t__ DISABLE_IN_SUSPEND ;
 scalar_t__ ENABLE_IN_SUSPEND ;
 int rdev_err (struct regulator_dev*,char*) ;
 int rdev_warn (struct regulator_dev*,char*) ;
 struct regulator_state* regulator_get_suspend_state (struct regulator_dev*,int ) ;
 int stub1 (struct regulator_dev*) ;
 int stub2 (struct regulator_dev*) ;
 int stub3 (struct regulator_dev*,scalar_t__) ;
 int stub4 (struct regulator_dev*,scalar_t__) ;

__attribute__((used)) static int suspend_set_state(struct regulator_dev *rdev,
        suspend_state_t state)
{
 int ret = 0;
 struct regulator_state *rstate;

 rstate = regulator_get_suspend_state(rdev, state);
 if (rstate == ((void*)0))
  return 0;





 if (rstate->enabled != ENABLE_IN_SUSPEND &&
     rstate->enabled != DISABLE_IN_SUSPEND) {
  if (rdev->desc->ops->set_suspend_voltage ||
      rdev->desc->ops->set_suspend_mode)
   rdev_warn(rdev, "No configuration\n");
  return 0;
 }

 if (rstate->enabled == ENABLE_IN_SUSPEND &&
  rdev->desc->ops->set_suspend_enable)
  ret = rdev->desc->ops->set_suspend_enable(rdev);
 else if (rstate->enabled == DISABLE_IN_SUSPEND &&
  rdev->desc->ops->set_suspend_disable)
  ret = rdev->desc->ops->set_suspend_disable(rdev);
 else
  ret = 0;

 if (ret < 0) {
  rdev_err(rdev, "failed to enabled/disable\n");
  return ret;
 }

 if (rdev->desc->ops->set_suspend_voltage && rstate->uV > 0) {
  ret = rdev->desc->ops->set_suspend_voltage(rdev, rstate->uV);
  if (ret < 0) {
   rdev_err(rdev, "failed to set voltage\n");
   return ret;
  }
 }

 if (rdev->desc->ops->set_suspend_mode && rstate->mode > 0) {
  ret = rdev->desc->ops->set_suspend_mode(rdev, rstate->mode);
  if (ret < 0) {
   rdev_err(rdev, "failed to set mode\n");
   return ret;
  }
 }

 return ret;
}
