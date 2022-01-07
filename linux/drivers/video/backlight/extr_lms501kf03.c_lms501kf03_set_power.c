
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lms501kf03 {int dev; } ;
struct lcd_device {int dummy; } ;


 int EINVAL ;
 int FB_BLANK_NORMAL ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int dev_err (int ,char*) ;
 struct lms501kf03* lcd_get_data (struct lcd_device*) ;
 int lms501kf03_power (struct lms501kf03*,int) ;

__attribute__((used)) static int lms501kf03_set_power(struct lcd_device *ld, int power)
{
 struct lms501kf03 *lcd = lcd_get_data(ld);

 if (power != FB_BLANK_UNBLANK && power != FB_BLANK_POWERDOWN &&
  power != FB_BLANK_NORMAL) {
  dev_err(lcd->dev, "power value should be 0, 1 or 4.\n");
  return -EINVAL;
 }

 return lms501kf03_power(lcd, power);
}
