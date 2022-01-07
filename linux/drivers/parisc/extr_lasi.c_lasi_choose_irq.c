
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sversion; } ;
struct parisc_device {int hw_path; int irq; TYPE_1__ id; } ;


 int gsc_asic_assign_irq (void*,int,int *) ;

__attribute__((used)) static void lasi_choose_irq(struct parisc_device *dev, void *ctrl)
{
 int irq;

 switch (dev->id.sversion) {
  case 0x74: irq = 7; break;
  case 0x7B: irq = 13; break;
  case 0x81: irq = 14; break;
  case 0x82: irq = 9; break;
  case 0x83: irq = 20; break;
  case 0x84: irq = 26; break;
  case 0x87: irq = 18; break;
  case 0x8A: irq = 8; break;
  case 0x8C: irq = 5; break;
  case 0x8D: irq = (dev->hw_path == 13) ? 16 : 17; break;

  default: return;
 }

 gsc_asic_assign_irq(ctrl, irq, &dev->irq);
}
