
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpdi_private {scalar_t__ plx9080_mmio; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct hpdi_private* private; } ;


 scalar_t__ PLX_REG_INTCSR ;
 int comedi_pci_disable (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int gsc_hpdi_free_dma (struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void gsc_hpdi_detach(struct comedi_device *dev)
{
 struct hpdi_private *devpriv = dev->private;

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (devpriv) {
  if (devpriv->plx9080_mmio) {
   writel(0, devpriv->plx9080_mmio + PLX_REG_INTCSR);
   iounmap(devpriv->plx9080_mmio);
  }
  if (dev->mmio)
   iounmap(dev->mmio);
 }
 comedi_pci_disable(dev);
 gsc_hpdi_free_dma(dev);
}
