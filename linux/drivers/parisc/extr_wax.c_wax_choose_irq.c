
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sversion; } ;
struct parisc_device {int aux_irq; TYPE_1__ id; int irq; } ;


 int gsc_asic_assign_irq (void*,int,int *) ;

__attribute__((used)) static void wax_choose_irq(struct parisc_device *dev, void *ctrl)
{
 int irq;

 switch (dev->id.sversion) {
  case 0x73: irq = 1; break;
  case 0x8c: irq = 6; break;
  case 0x90: irq = 10; break;
  default: return;
 }

 gsc_asic_assign_irq(ctrl, irq, &dev->irq);

 switch (dev->id.sversion) {
  case 0x73: irq = 2; break;
  case 0x90: irq = 0; break;
  default: return;
 }

 gsc_asic_assign_irq(ctrl, irq, &dev->aux_irq);
}
