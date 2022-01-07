
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrst_rtc {int dummy; } ;
struct device {int dummy; } ;


 int RTC_AIE ;
 struct mrst_rtc* dev_get_drvdata (struct device*) ;
 int mrst_irq_disable (struct mrst_rtc*,int ) ;
 int mrst_irq_enable (struct mrst_rtc*,int ) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mrst_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct mrst_rtc *mrst = dev_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&rtc_lock, flags);
 if (enabled)
  mrst_irq_enable(mrst, RTC_AIE);
 else
  mrst_irq_disable(mrst, RTC_AIE);
 spin_unlock_irqrestore(&rtc_lock, flags);
 return 0;
}
