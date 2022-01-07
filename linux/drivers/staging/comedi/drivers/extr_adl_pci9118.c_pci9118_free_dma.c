
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {struct pci9118_dmabuf* dmabuf; } ;
struct pci9118_dmabuf {int hw; scalar_t__ virt; int size; } ;
struct comedi_device {int hw_dev; struct pci9118_private* private; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void pci9118_free_dma(struct comedi_device *dev)
{
 struct pci9118_private *devpriv = dev->private;
 struct pci9118_dmabuf *dmabuf;
 int i;

 if (!devpriv)
  return;

 for (i = 0; i < 2; i++) {
  dmabuf = &devpriv->dmabuf[i];
  if (dmabuf->virt) {
   dma_free_coherent(dev->hw_dev, dmabuf->size,
       dmabuf->virt, dmabuf->hw);
  }
 }
}
