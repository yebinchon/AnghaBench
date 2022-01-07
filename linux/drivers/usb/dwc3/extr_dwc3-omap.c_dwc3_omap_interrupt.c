
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_omap {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int dwc3_omap_disable_irqs (struct dwc3_omap*) ;
 scalar_t__ dwc3_omap_read_irq0_status (struct dwc3_omap*) ;
 scalar_t__ dwc3_omap_read_irqmisc_status (struct dwc3_omap*) ;

__attribute__((used)) static irqreturn_t dwc3_omap_interrupt(int irq, void *_omap)
{
 struct dwc3_omap *omap = _omap;

 if (dwc3_omap_read_irqmisc_status(omap) ||
     dwc3_omap_read_irq0_status(omap)) {

  dwc3_omap_disable_irqs(omap);
  return IRQ_WAKE_THREAD;
 }

 return IRQ_NONE;
}
