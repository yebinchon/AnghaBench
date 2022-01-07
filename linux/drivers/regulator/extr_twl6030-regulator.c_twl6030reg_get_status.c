
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int REGULATOR_STATUS_NORMAL ;
 int REGULATOR_STATUS_OFF ;
 int REGULATOR_STATUS_STANDBY ;
 int TWL6030_CFG_STATE_APP (int) ;




 int TWL_MODULE_PM_RECEIVER ;
 int VREG_STATE ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_grp (struct regulator_dev*) ;
 int twlreg_read (struct twlreg_info*,int ,int ) ;

__attribute__((used)) static int twl6030reg_get_status(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int val;

 val = twlreg_grp(rdev);
 if (val < 0)
  return val;

 val = twlreg_read(info, TWL_MODULE_PM_RECEIVER, VREG_STATE);

 switch (TWL6030_CFG_STATE_APP(val)) {
 case 129:
  return REGULATOR_STATUS_NORMAL;

 case 128:
  return REGULATOR_STATUS_STANDBY;

 case 131:
 case 130:
 default:
  break;
 }

 return REGULATOR_STATUS_OFF;
}
