
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_omap {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dwc3_omap_enable_irqs (struct dwc3_omap*) ;
 int dwc3_omap_read_irq0_status (struct dwc3_omap*) ;
 int dwc3_omap_read_irqmisc_status (struct dwc3_omap*) ;
 int dwc3_omap_write_irq0_status (struct dwc3_omap*,int ) ;
 int dwc3_omap_write_irqmisc_status (struct dwc3_omap*,int ) ;

__attribute__((used)) static irqreturn_t dwc3_omap_interrupt_thread(int irq, void *_omap)
{
 struct dwc3_omap *omap = _omap;
 u32 reg;


 reg = dwc3_omap_read_irqmisc_status(omap);
 dwc3_omap_write_irqmisc_status(omap, reg);

 reg = dwc3_omap_read_irq0_status(omap);
 dwc3_omap_write_irq0_status(omap, reg);


 dwc3_omap_enable_irqs(omap);

 return IRQ_HANDLED;
}
