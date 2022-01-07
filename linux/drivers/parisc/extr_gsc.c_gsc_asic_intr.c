
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_asic {unsigned int* global_irq; int name; scalar_t__ hpa; } ;
typedef int irqreturn_t ;


 int DEBPRINTK (char*,int ,unsigned long) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ OFFSET_IRR ;
 int __ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 unsigned long gsc_readl (scalar_t__) ;

irqreturn_t gsc_asic_intr(int gsc_asic_irq, void *dev)
{
 unsigned long irr;
 struct gsc_asic *gsc_asic = dev;

 irr = gsc_readl(gsc_asic->hpa + OFFSET_IRR);
 if (irr == 0)
  return IRQ_NONE;

 DEBPRINTK("%s intr, mask=0x%x\n", gsc_asic->name, irr);

 do {
  int local_irq = __ffs(irr);
  unsigned int irq = gsc_asic->global_irq[local_irq];
  generic_handle_irq(irq);
  irr &= ~(1 << local_irq);
 } while (irr);

 return IRQ_HANDLED;
}
