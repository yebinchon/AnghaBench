
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;
struct hx8357_data {int state; } ;


 scalar_t__ POWER_IS_ON (int) ;
 int dev_warn (int *,char*,int) ;
 int hx8357_enter_standby (struct lcd_device*) ;
 int hx8357_exit_standby (struct lcd_device*) ;
 struct hx8357_data* lcd_get_data (struct lcd_device*) ;

__attribute__((used)) static int hx8357_set_power(struct lcd_device *lcdev, int power)
{
 struct hx8357_data *lcd = lcd_get_data(lcdev);
 int ret = 0;

 if (POWER_IS_ON(power) && !POWER_IS_ON(lcd->state))
  ret = hx8357_exit_standby(lcdev);
 else if (!POWER_IS_ON(power) && POWER_IS_ON(lcd->state))
  ret = hx8357_enter_standby(lcdev);

 if (ret == 0)
  lcd->state = power;
 else
  dev_warn(&lcdev->dev, "failed to set power mode %d\n", power);

 return ret;
}
