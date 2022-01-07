
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cmos_rtc {int dummy; } ;


 int RTC_AIE ;
 int cmos_irq_disable (struct cmos_rtc*,int ) ;
 int cmos_irq_enable (struct cmos_rtc*,int ) ;
 struct cmos_rtc* dev_get_drvdata (struct device*) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cmos_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct cmos_rtc *cmos = dev_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&rtc_lock, flags);

 if (enabled)
  cmos_irq_enable(cmos, RTC_AIE);
 else
  cmos_irq_disable(cmos, RTC_AIE);

 spin_unlock_irqrestore(&rtc_lock, flags);
 return 0;
}
