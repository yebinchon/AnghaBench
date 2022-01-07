
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {int ao_dma_index; } ;
struct comedi_device {struct pcidas64_private* private; } ;


 int AO_DMA_RING_COUNT ;

__attribute__((used)) static inline unsigned int prev_ao_dma_index(struct comedi_device *dev)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned int buffer_index;

 if (devpriv->ao_dma_index == 0)
  buffer_index = AO_DMA_RING_COUNT - 1;
 else
  buffer_index = devpriv->ao_dma_index - 1;
 return buffer_index;
}
