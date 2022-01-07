
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa1100_rtc {int lock; int rtsr; } ;
struct device {int dummy; } ;


 int RTSR_ALE ;
 struct sa1100_rtc* dev_get_drvdata (struct device*) ;
 int readl_relaxed (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int sa1100_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 u32 rtsr;
 struct sa1100_rtc *info = dev_get_drvdata(dev);

 spin_lock_irq(&info->lock);
 rtsr = readl_relaxed(info->rtsr);
 if (enabled)
  rtsr |= RTSR_ALE;
 else
  rtsr &= ~RTSR_ALE;
 writel_relaxed(rtsr, info->rtsr);
 spin_unlock_irq(&info->lock);
 return 0;
}
