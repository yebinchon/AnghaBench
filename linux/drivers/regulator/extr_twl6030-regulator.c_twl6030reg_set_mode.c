
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int features; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;


 int TWL6030_CFG_STATE_GRP_SHIFT ;
 int TWL6030_CFG_STATE_ON ;
 int TWL6030_CFG_STATE_SLEEP ;
 int TWL6032_SUBCLASS ;
 int TWL_MODULE_PM_RECEIVER ;
 int VREG_STATE ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ twl_class_is_6030 () ;
 int twlreg_grp (struct regulator_dev*) ;
 int twlreg_write (struct twlreg_info*,int ,int ,int) ;

__attribute__((used)) static int twl6030reg_set_mode(struct regulator_dev *rdev, unsigned mode)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int grp = 0;
 int val;

 if (!(twl_class_is_6030() && (info->features & TWL6032_SUBCLASS)))
  grp = twlreg_grp(rdev);

 if (grp < 0)
  return grp;


 val = grp << TWL6030_CFG_STATE_GRP_SHIFT;

 switch (mode) {
 case 129:
  val |= TWL6030_CFG_STATE_ON;
  break;
 case 128:
  val |= TWL6030_CFG_STATE_SLEEP;
  break;

 default:
  return -EINVAL;
 }

 return twlreg_write(info, TWL_MODULE_PM_RECEIVER, VREG_STATE, val);
}
