
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500_rtc {scalar_t__ regbase; } ;
struct device {int dummy; } ;


 unsigned long ALARM_ENABLE_MASK ;
 scalar_t__ VT8500_RTC_AS ;
 struct vt8500_rtc* dev_get_drvdata (struct device*) ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int vt8500_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct vt8500_rtc *vt8500_rtc = dev_get_drvdata(dev);
 unsigned long tmp = readl(vt8500_rtc->regbase + VT8500_RTC_AS);

 if (enabled)
  tmp |= ALARM_ENABLE_MASK;
 else
  tmp &= ~ALARM_ENABLE_MASK;

 writel(tmp, vt8500_rtc->regbase + VT8500_RTC_AS);
 return 0;
}
