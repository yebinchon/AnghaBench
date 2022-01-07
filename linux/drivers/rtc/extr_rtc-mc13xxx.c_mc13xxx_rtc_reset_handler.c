
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx_rtc {scalar_t__ valid; struct mc13xxx* mc13xxx; } ;
struct mc13xxx {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mc13xxx_irq_mask (struct mc13xxx*,int) ;

__attribute__((used)) static irqreturn_t mc13xxx_rtc_reset_handler(int irq, void *dev)
{
 struct mc13xxx_rtc *priv = dev;
 struct mc13xxx *mc13xxx = priv->mc13xxx;

 priv->valid = 0;

 mc13xxx_irq_mask(mc13xxx, irq);

 return IRQ_HANDLED;
}
