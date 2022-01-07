
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int WM8350_CS1_FLASH_MODE ;
 int WM8350_CS1_ON_RAMP_MASK ;
 int WM8350_CSA_FLASH_CONTROL ;
 int WM8350_CSB_FLASH_CONTROL ;


 struct wm8350* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;

__attribute__((used)) static int wm8350_isink_enable_time(struct regulator_dev *rdev)
{
 struct wm8350 *wm8350 = rdev_get_drvdata(rdev);
 int isink = rdev_get_id(rdev);
 int reg;

 switch (isink) {
 case 129:
  reg = wm8350_reg_read(wm8350, WM8350_CSA_FLASH_CONTROL);
  break;
 case 128:
  reg = wm8350_reg_read(wm8350, WM8350_CSB_FLASH_CONTROL);
  break;
 default:
  return -EINVAL;
 }

 if (reg & WM8350_CS1_FLASH_MODE) {
  switch (reg & WM8350_CS1_ON_RAMP_MASK) {
  case 0:
   return 0;
  case 1:
   return 1950;
  case 2:
   return 3910;
  case 3:
   return 7800;
  }
 } else {
  switch (reg & WM8350_CS1_ON_RAMP_MASK) {
  case 0:
   return 0;
  case 1:
   return 250000;
  case 2:
   return 500000;
  case 3:
   return 1000000;
  }
 }

 return -EINVAL;
}
