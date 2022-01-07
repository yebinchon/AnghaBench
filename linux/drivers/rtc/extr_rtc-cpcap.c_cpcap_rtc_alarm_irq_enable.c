
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cpcap_rtc {unsigned int alarm_enabled; int alarm_irq; } ;


 struct cpcap_rtc* dev_get_drvdata (struct device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static int cpcap_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct cpcap_rtc *rtc = dev_get_drvdata(dev);

 if (rtc->alarm_enabled == enabled)
  return 0;

 if (enabled)
  enable_irq(rtc->alarm_irq);
 else
  disable_irq(rtc->alarm_irq);

 rtc->alarm_enabled = !!enabled;

 return 0;
}
