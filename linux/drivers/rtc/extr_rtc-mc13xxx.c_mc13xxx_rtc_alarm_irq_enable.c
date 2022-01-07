
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx_rtc {int mc13xxx; } ;
struct device {int dummy; } ;


 int MC13XXX_IRQ_TODA ;
 struct mc13xxx_rtc* dev_get_drvdata (struct device*) ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_rtc_irq_enable_unlocked (struct device*,unsigned int,int ) ;
 int mc13xxx_unlock (int ) ;

__attribute__((used)) static int mc13xxx_rtc_alarm_irq_enable(struct device *dev,
     unsigned int enabled)
{
 struct mc13xxx_rtc *priv = dev_get_drvdata(dev);
 int ret;

 mc13xxx_lock(priv->mc13xxx);

 ret = mc13xxx_rtc_irq_enable_unlocked(dev, enabled, MC13XXX_IRQ_TODA);

 mc13xxx_unlock(priv->mc13xxx);

 return ret;
}
