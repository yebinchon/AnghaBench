
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_rtc {int da9052; } ;


 int DA9052_ALARM_Y_ALARM_ON ;
 int DA9052_ALARM_Y_REG ;
 int da9052_reg_read (int ,int ) ;
 int rtc_err (struct da9052_rtc*,char*,int) ;

__attribute__((used)) static int da9052_rtc_get_alarm_status(struct da9052_rtc *rtc)
{
 int ret;

 ret = da9052_reg_read(rtc->da9052, DA9052_ALARM_Y_REG);
 if (ret < 0) {
  rtc_err(rtc, "Failed to read ALM: %d\n", ret);
  return ret;
 }

 return !!(ret&DA9052_ALARM_Y_ALARM_ON);
}
