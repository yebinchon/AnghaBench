
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int dummy; } ;
struct device {int dummy; } ;
struct abb5zes3_rtc_data {scalar_t__ timer_alarm; } ;


 int _abb5zes3_rtc_read_alarm (struct device*,struct rtc_wkalrm*) ;
 int _abb5zes3_rtc_read_timer (struct device*,struct rtc_wkalrm*) ;
 struct abb5zes3_rtc_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int abb5zes3_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct abb5zes3_rtc_data *data = dev_get_drvdata(dev);
 int ret;

 if (data->timer_alarm)
  ret = _abb5zes3_rtc_read_timer(dev, alarm);
 else
  ret = _abb5zes3_rtc_read_alarm(dev, alarm);

 return ret;
}
