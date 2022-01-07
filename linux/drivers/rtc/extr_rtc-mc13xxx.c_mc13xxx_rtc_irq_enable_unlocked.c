
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx_rtc {struct mc13xxx* mc13xxx; int valid; } ;
struct device {int dummy; } ;


 int ENODATA ;
 struct mc13xxx_rtc* dev_get_drvdata (struct device*) ;
 int mc13xxx_irq_mask (struct mc13xxx*,int) ;
 int mc13xxx_irq_unmask (struct mc13xxx*,int) ;

__attribute__((used)) static int mc13xxx_rtc_irq_enable_unlocked(struct device *dev,
  unsigned int enabled, int irq)
{
 struct mc13xxx_rtc *priv = dev_get_drvdata(dev);
 int (*func)(struct mc13xxx *mc13xxx, int irq);

 if (!priv->valid)
  return -ENODATA;

 func = enabled ? mc13xxx_irq_unmask : mc13xxx_irq_mask;
 return func(priv->mc13xxx, irq);
}
