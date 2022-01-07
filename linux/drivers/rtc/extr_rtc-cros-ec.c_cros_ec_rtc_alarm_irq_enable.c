
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device {int dummy; } ;
struct cros_ec_rtc {scalar_t__ saved_alarm; struct cros_ec_device* cros_ec; } ;
struct cros_ec_device {int dummy; } ;


 int EC_CMD_RTC_GET_ALARM ;
 int EC_CMD_RTC_GET_VALUE ;
 int EC_CMD_RTC_SET_ALARM ;
 scalar_t__ EC_RTC_ALARM_CLEAR ;
 int cros_ec_rtc_get (struct cros_ec_device*,int ,scalar_t__*) ;
 int cros_ec_rtc_set (struct cros_ec_device*,int ,scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct cros_ec_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int cros_ec_rtc_alarm_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct cros_ec_rtc *cros_ec_rtc = dev_get_drvdata(dev);
 struct cros_ec_device *cros_ec = cros_ec_rtc->cros_ec;
 int ret;
 u32 current_time, alarm_offset, alarm_value;

 ret = cros_ec_rtc_get(cros_ec, EC_CMD_RTC_GET_VALUE, &current_time);
 if (ret < 0) {
  dev_err(dev, "error getting time: %d\n", ret);
  return ret;
 }

 if (enabled) {

  if (cros_ec_rtc->saved_alarm < current_time)
   alarm_offset = EC_RTC_ALARM_CLEAR;
  else
   alarm_offset = cros_ec_rtc->saved_alarm - current_time;

  ret = cros_ec_rtc_set(cros_ec, EC_CMD_RTC_SET_ALARM,
          alarm_offset);
  if (ret < 0) {
   dev_err(dev, "error restoring alarm: %d\n", ret);
   return ret;
  }
 } else {

  ret = cros_ec_rtc_get(cros_ec, EC_CMD_RTC_GET_ALARM,
          &alarm_offset);
  if (ret < 0) {
   dev_err(dev, "error saving alarm: %d\n", ret);
   return ret;
  }

  alarm_value = current_time + alarm_offset;






  if (alarm_value < current_time)
   cros_ec_rtc->saved_alarm = EC_RTC_ALARM_CLEAR;
  else
   cros_ec_rtc->saved_alarm = alarm_value;

  alarm_offset = EC_RTC_ALARM_CLEAR;
  ret = cros_ec_rtc_set(cros_ec, EC_CMD_RTC_SET_ALARM,
          alarm_offset);
  if (ret < 0) {
   dev_err(dev, "error disabling alarm: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
