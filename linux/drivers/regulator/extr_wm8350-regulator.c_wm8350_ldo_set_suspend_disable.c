
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_LDO1_HIB_MODE_DIS ;
 int WM8350_LDO1_HIB_MODE_MASK ;
 int WM8350_LDO1_LOW_POWER ;
 int WM8350_LDO2_LOW_POWER ;
 int WM8350_LDO3_LOW_POWER ;
 int WM8350_LDO4_LOW_POWER ;




 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int) ;
 int wm8350_reg_write (struct wm8350*,int,int) ;

__attribute__((used)) static int wm8350_ldo_set_suspend_disable(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int volt_reg, ldo = rdev_get_id(rdev);
 u16 val;

 switch (ldo) {
 case 131:
  volt_reg = WM8350_LDO1_LOW_POWER;
  break;
 case 130:
  volt_reg = WM8350_LDO2_LOW_POWER;
  break;
 case 129:
  volt_reg = WM8350_LDO3_LOW_POWER;
  break;
 case 128:
  volt_reg = WM8350_LDO4_LOW_POWER;
  break;
 default:
  return -EINVAL;
 }


 val = wm8350_reg_read(wm8350, volt_reg) & ~WM8350_LDO1_HIB_MODE_MASK;
 wm8350_reg_write(wm8350, volt_reg, val | WM8350_LDO1_HIB_MODE_DIS);
 return 0;
}
