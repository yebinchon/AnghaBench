
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055_pdata {scalar_t__ reset_enable; } ;
struct da9055 {int dummy; } ;


 int DA9055_CRYSTAL_EN ;
 int DA9055_REG_ALARM_MO ;
 int DA9055_REG_CONTROL_B ;
 int DA9055_REG_EN_32K ;
 int DA9055_RTC_EN ;
 int DA9055_RTC_MODE_PD ;
 int DA9055_RTC_MODE_SD ;
 int DA9055_RTC_MODE_SD_SHIFT ;
 int DA9055_RTC_TICK_WAKE_MASK ;
 int da9055_reg_update (struct da9055*,int ,int,int) ;

__attribute__((used)) static int da9055_rtc_device_init(struct da9055 *da9055,
     struct da9055_pdata *pdata)
{
 int ret;


 ret = da9055_reg_update(da9055, DA9055_REG_CONTROL_B,
    DA9055_RTC_EN, DA9055_RTC_EN);
 if (ret < 0)
  return ret;
 ret = da9055_reg_update(da9055, DA9055_REG_EN_32K,
    DA9055_CRYSTAL_EN, DA9055_CRYSTAL_EN);
 if (ret < 0)
  return ret;


 ret = da9055_reg_update(da9055, DA9055_REG_CONTROL_B,
    DA9055_RTC_MODE_PD, DA9055_RTC_MODE_PD);
 if (ret < 0)
  return ret;


 if (pdata && pdata->reset_enable) {
  ret = da9055_reg_update(da9055, DA9055_REG_CONTROL_B,
     DA9055_RTC_MODE_SD,
     DA9055_RTC_MODE_SD <<
     DA9055_RTC_MODE_SD_SHIFT);
  if (ret < 0)
   return ret;
 }


 ret = da9055_reg_update(da9055, DA9055_REG_ALARM_MO,
    DA9055_RTC_TICK_WAKE_MASK, 0);
 if (ret < 0)
  return ret;

 return 0;
}
