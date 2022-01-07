
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk808_rtc {int dummy; } ;
struct device {int dummy; } ;


 struct rk808_rtc* dev_get_drvdata (struct device*) ;
 int rk808_rtc_start_alarm (struct rk808_rtc*) ;
 int rk808_rtc_stop_alarm (struct rk808_rtc*) ;

__attribute__((used)) static int rk808_rtc_alarm_irq_enable(struct device *dev,
          unsigned int enabled)
{
 struct rk808_rtc *rk808_rtc = dev_get_drvdata(dev);

 if (enabled)
  return rk808_rtc_start_alarm(rk808_rtc);

 return rk808_rtc_stop_alarm(rk808_rtc);
}
