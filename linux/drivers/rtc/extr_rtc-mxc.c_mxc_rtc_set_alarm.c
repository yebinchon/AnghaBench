
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct rtc_time {int dummy; } ;
struct rtc_plat_data {int g_rtc_alarm; } ;
struct device {int dummy; } ;


 int RTC_ALM_BIT ;
 struct rtc_plat_data* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int *,int) ;
 int mxc_rtc_irq_enable (struct device*,int ,int ) ;
 int rtc_update_alarm (struct device*,int *) ;

__attribute__((used)) static int mxc_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rtc_plat_data *pdata = dev_get_drvdata(dev);

 rtc_update_alarm(dev, &alrm->time);

 memcpy(&pdata->g_rtc_alarm, &alrm->time, sizeof(struct rtc_time));
 mxc_rtc_irq_enable(dev, RTC_ALM_BIT, alrm->enabled);

 return 0;
}
