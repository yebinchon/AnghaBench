
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int hw_dev; struct apci3120_private* private; } ;
struct apci3120_private {int use_dma; int use_double_buffer; struct apci3120_dmabuf* dmabuf; } ;
struct apci3120_dmabuf {int size; scalar_t__ virt; int hw; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void apci3120_dma_alloc(struct comedi_device *dev)
{
 struct apci3120_private *devpriv = dev->private;
 struct apci3120_dmabuf *dmabuf;
 int order;
 int i;

 for (i = 0; i < 2; i++) {
  dmabuf = &devpriv->dmabuf[i];
  for (order = 2; order >= 0; order--) {
   dmabuf->virt = dma_alloc_coherent(dev->hw_dev,
         PAGE_SIZE << order,
         &dmabuf->hw,
         GFP_KERNEL);
   if (dmabuf->virt)
    break;
  }
  if (!dmabuf->virt)
   break;
  dmabuf->size = PAGE_SIZE << order;

  if (i == 0)
   devpriv->use_dma = 1;
  if (i == 1)
   devpriv->use_double_buffer = 1;
 }
}
