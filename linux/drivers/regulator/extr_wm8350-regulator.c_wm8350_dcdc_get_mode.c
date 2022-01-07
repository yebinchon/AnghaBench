
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dev; } ;
struct regulator_dev {int dummy; } ;


 unsigned int EINVAL ;
 int REGULATOR_MODE_FAST ;
 int REGULATOR_MODE_IDLE ;
 int REGULATOR_MODE_NORMAL ;
 int REGULATOR_MODE_STANDBY ;
 int WM8350_DCDC1_FORCE_PWM ;
 int WM8350_DCDC1_FORCE_PWM_ENA ;
 int WM8350_DCDC3_FORCE_PWM ;
 int WM8350_DCDC4_FORCE_PWM ;
 int WM8350_DCDC6_FORCE_PWM ;




 int WM8350_DCDC_ACTIVE_OPTIONS ;
 int WM8350_DCDC_SLEEP_OPTIONS ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int) ;

__attribute__((used)) static unsigned int wm8350_dcdc_get_mode(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int dcdc = rdev_get_id(rdev);
 u16 mask, sleep, active, force;
 int mode = REGULATOR_MODE_NORMAL;
 int reg;

 switch (dcdc) {
 case 131:
  reg = WM8350_DCDC1_FORCE_PWM;
  break;
 case 130:
  reg = WM8350_DCDC3_FORCE_PWM;
  break;
 case 129:
  reg = WM8350_DCDC4_FORCE_PWM;
  break;
 case 128:
  reg = WM8350_DCDC6_FORCE_PWM;
  break;
 default:
  return -EINVAL;
 }

 mask = 1 << (dcdc - 131);
 active = wm8350_reg_read(wm8350, WM8350_DCDC_ACTIVE_OPTIONS) & mask;
 force = wm8350_reg_read(wm8350, reg) & WM8350_DCDC1_FORCE_PWM_ENA;
 sleep = wm8350_reg_read(wm8350, WM8350_DCDC_SLEEP_OPTIONS) & mask;

 dev_dbg(wm8350->dev, "mask %x active %x sleep %x force %x",
  mask, active, sleep, force);

 if (active && !sleep) {
  if (force)
   mode = REGULATOR_MODE_FAST;
  else
   mode = REGULATOR_MODE_NORMAL;
 } else if (!active && !sleep)
  mode = REGULATOR_MODE_IDLE;
 else if (sleep)
  mode = REGULATOR_MODE_STANDBY;

 return mode;
}
