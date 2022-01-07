
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int hw_dev; struct apci3120_private* private; } ;
struct apci3120_private {struct apci3120_dmabuf* dmabuf; } ;
struct apci3120_dmabuf {int hw; scalar_t__ virt; int size; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void apci3120_dma_free(struct comedi_device *dev)
{
 struct apci3120_private *devpriv = dev->private;
 struct apci3120_dmabuf *dmabuf;
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
