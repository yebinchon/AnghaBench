
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct rtc_plat_data {scalar_t__ irq; scalar_t__ alrm_mday; scalar_t__ alrm_hour; scalar_t__ alrm_min; scalar_t__ alrm_sec; int irqen; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int RTC_AF ;
 struct rtc_plat_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int stk17ta8_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rtc_plat_data *pdata = dev_get_drvdata(dev);

 if (pdata->irq <= 0)
  return -EINVAL;
 alrm->time.tm_mday = pdata->alrm_mday < 0 ? 0 : pdata->alrm_mday;
 alrm->time.tm_hour = pdata->alrm_hour < 0 ? 0 : pdata->alrm_hour;
 alrm->time.tm_min = pdata->alrm_min < 0 ? 0 : pdata->alrm_min;
 alrm->time.tm_sec = pdata->alrm_sec < 0 ? 0 : pdata->alrm_sec;
 alrm->enabled = (pdata->irqen & RTC_AF) ? 1 : 0;
 return 0;
}
