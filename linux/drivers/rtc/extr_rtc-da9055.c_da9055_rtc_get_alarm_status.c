
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055 {int dev; } ;


 int DA9055_REG_ALARM_Y ;
 int DA9055_RTC_ALM_EN ;
 int da9055_reg_read (struct da9055*,int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int da9055_rtc_get_alarm_status(struct da9055 *da9055)
{
 int ret;

 ret = da9055_reg_read(da9055, DA9055_REG_ALARM_Y);
 if (ret < 0) {
  dev_err(da9055->dev, "Failed to read ALM: %d\n", ret);
  return ret;
 }
 ret &= DA9055_RTC_ALM_EN;
 return (ret > 0) ? 1 : 0;
}
