
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int dev; } ;
struct gsc_fixup_struct {void (* choose_irq ) (struct parisc_device*,void*) ;void* ctrl; } ;


 int device_for_each_child (int *,struct gsc_fixup_struct*,int ) ;
 int gsc_fixup_irqs_callback ;

void gsc_fixup_irqs(struct parisc_device *parent, void *ctrl,
   void (*choose_irq)(struct parisc_device *, void *))
{
 struct gsc_fixup_struct data = {
  .choose_irq = choose_irq,
  .ctrl = ctrl,
 };

 device_for_each_child(&parent->dev, &data, gsc_fixup_irqs_callback);
}
