
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ time64_t ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;
struct cros_ec_rtc {scalar_t__ saved_alarm; struct cros_ec_device* cros_ec; } ;
struct cros_ec_device {int dummy; } ;


 int EC_CMD_RTC_GET_VALUE ;
 int EC_CMD_RTC_SET_ALARM ;
 scalar_t__ EC_RTC_ALARM_CLEAR ;
 int EINVAL ;
 int ETIME ;
 scalar_t__ U32_MAX ;
 int cros_ec_rtc_get (struct cros_ec_device*,int ,scalar_t__*) ;
 int cros_ec_rtc_set (struct cros_ec_device*,int ,scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct cros_ec_rtc* dev_get_drvdata (struct device*) ;
 scalar_t__ rtc_tm_to_time64 (int *) ;

__attribute__((used)) static int cros_ec_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct cros_ec_rtc *cros_ec_rtc = dev_get_drvdata(dev);
 struct cros_ec_device *cros_ec = cros_ec_rtc->cros_ec;
 int ret;
 time64_t alarm_time;
 u32 current_time, alarm_offset;







 ret = cros_ec_rtc_get(cros_ec, EC_CMD_RTC_GET_VALUE, &current_time);
 if (ret < 0) {
  dev_err(dev, "error getting time: %d\n", ret);
  return ret;
 }

 alarm_time = rtc_tm_to_time64(&alrm->time);

 if (alarm_time < 0 || alarm_time > U32_MAX)
  return -EINVAL;

 if (!alrm->enabled) {




  alarm_offset = EC_RTC_ALARM_CLEAR;
  cros_ec_rtc->saved_alarm = (u32)alarm_time;
 } else {

  if ((u32)alarm_time <= current_time)
   return -ETIME;

  alarm_offset = (u32)alarm_time - current_time;
 }

 ret = cros_ec_rtc_set(cros_ec, EC_CMD_RTC_SET_ALARM, alarm_offset);
 if (ret < 0) {
  dev_err(dev, "error setting alarm: %d\n", ret);
  return ret;
 }

 return 0;
}
