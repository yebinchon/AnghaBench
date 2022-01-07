
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sversion; } ;
struct parisc_device {int irq; TYPE_1__ id; } ;
struct dino_device {int dummy; } ;


 int dino_assign_irq (struct dino_device*,int,int *) ;

__attribute__((used)) static void dino_choose_irq(struct parisc_device *dev, void *ctrl)
{
 int irq;
 struct dino_device *dino = ctrl;

 switch (dev->id.sversion) {
  case 0x00084: irq = 8; break;
  case 0x0008c: irq = 10; break;
  case 0x00096: irq = 8; break;
  default: return;
 }

 dino_assign_irq(dino, irq, &dev->irq);
}
