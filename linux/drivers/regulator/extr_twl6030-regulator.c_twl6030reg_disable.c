
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int features; } ;
struct regulator_dev {int dummy; } ;


 int P1_GRP_6030 ;
 int P2_GRP_6030 ;
 int P3_GRP_6030 ;
 int TWL6030_CFG_STATE_GRP_SHIFT ;
 int TWL6030_CFG_STATE_OFF ;
 int TWL6032_SUBCLASS ;
 int TWL_MODULE_PM_RECEIVER ;
 int VREG_STATE ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ twl_class_is_6030 () ;
 int twlreg_write (struct twlreg_info*,int ,int ,int) ;

__attribute__((used)) static int twl6030reg_disable(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int grp = 0;
 int ret;

 if (!(twl_class_is_6030() && (info->features & TWL6032_SUBCLASS)))
  grp = P1_GRP_6030 | P2_GRP_6030 | P3_GRP_6030;


 ret = twlreg_write(info, TWL_MODULE_PM_RECEIVER, VREG_STATE,
   (grp) << TWL6030_CFG_STATE_GRP_SHIFT |
   TWL6030_CFG_STATE_OFF);

 return ret;
}
