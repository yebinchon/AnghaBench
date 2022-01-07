
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_rtc {int da9052; } ;


 int DA9052_ALARM_Y_ALARM_ON ;
 int DA9052_ALARM_Y_REG ;
 int DA9052_ALARM_Y_TICK_ON ;
 int da9052_reg_update (int ,int ,int,int) ;
 int rtc_err (struct da9052_rtc*,char*,int) ;

__attribute__((used)) static int da9052_rtc_enable_alarm(struct da9052_rtc *rtc, bool enable)
{
 int ret;
 if (enable) {
  ret = da9052_reg_update(rtc->da9052, DA9052_ALARM_Y_REG,
    DA9052_ALARM_Y_ALARM_ON|DA9052_ALARM_Y_TICK_ON,
    DA9052_ALARM_Y_ALARM_ON);
  if (ret != 0)
   rtc_err(rtc, "Failed to enable ALM: %d\n", ret);
 } else {
  ret = da9052_reg_update(rtc->da9052, DA9052_ALARM_Y_REG,
   DA9052_ALARM_Y_ALARM_ON|DA9052_ALARM_Y_TICK_ON, 0);
  if (ret != 0)
   rtc_err(rtc, "Write error: %d\n", ret);
 }
 return ret;
}
