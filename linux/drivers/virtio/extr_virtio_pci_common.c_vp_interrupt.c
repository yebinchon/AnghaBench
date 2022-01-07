
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtio_pci_device {int isr; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int VIRTIO_PCI_ISR_CONFIG ;
 int ioread8 (int ) ;
 int vp_config_changed (int,void*) ;
 int vp_vring_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t vp_interrupt(int irq, void *opaque)
{
 struct virtio_pci_device *vp_dev = opaque;
 u8 isr;



 isr = ioread8(vp_dev->isr);


 if (!isr)
  return IRQ_NONE;


 if (isr & VIRTIO_PCI_ISR_CONFIG)
  vp_config_changed(irq, opaque);

 return vp_vring_interrupt(irq, opaque);
}
