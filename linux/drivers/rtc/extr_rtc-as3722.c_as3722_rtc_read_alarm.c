
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {int time; } ;
struct device {int dummy; } ;
struct as3722_rtc {struct as3722* as3722; } ;
struct as3722 {int dummy; } ;


 int AS3722_RTC_ALARM_SECOND_REG ;
 int as3722_block_read (struct as3722*,int ,int,int *) ;
 int as3722_reg_to_time (int *,int *) ;
 int dev_err (struct device*,char*,int) ;
 struct as3722_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int as3722_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct as3722_rtc *as3722_rtc = dev_get_drvdata(dev);
 struct as3722 *as3722 = as3722_rtc->as3722;
 u8 as_time_array[6];
 int ret;

 ret = as3722_block_read(as3722, AS3722_RTC_ALARM_SECOND_REG, 6,
   as_time_array);
 if (ret < 0) {
  dev_err(dev, "RTC_ALARM_SECOND block read failed %d\n", ret);
  return ret;
 }

 as3722_reg_to_time(as_time_array, &alrm->time);
 return 0;
}
