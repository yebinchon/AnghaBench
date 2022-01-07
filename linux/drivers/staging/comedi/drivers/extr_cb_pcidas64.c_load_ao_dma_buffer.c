
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcidas64_private {unsigned int ao_dma_index; TYPE_1__* ao_dma_desc; int * ao_buffer; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; struct pcidas64_private* private; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {void* next; void* transfer_size; } ;


 unsigned int AO_DMA_RING_COUNT ;
 int DMA_BUFFER_SIZE ;
 unsigned int PLX_DMADPR_CHAINEND ;
 unsigned int cb_pcidas64_ao_fill_buffer (struct comedi_device*,struct comedi_subdevice*,int ,int ) ;
 unsigned int comedi_samples_to_bytes (struct comedi_subdevice*,unsigned int) ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int le32_to_cpu (void*) ;
 unsigned int prev_ao_dma_index (struct comedi_device*) ;

__attribute__((used)) static unsigned int load_ao_dma_buffer(struct comedi_device *dev,
           const struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->write_subdev;
 unsigned int buffer_index = devpriv->ao_dma_index;
 unsigned int prev_buffer_index = prev_ao_dma_index(dev);
 unsigned int nsamples;
 unsigned int nbytes;
 unsigned int next_bits;

 nsamples = cb_pcidas64_ao_fill_buffer(dev, s,
           devpriv->ao_buffer[buffer_index],
           DMA_BUFFER_SIZE);
 if (nsamples == 0)
  return 0;

 nbytes = comedi_samples_to_bytes(s, nsamples);
 devpriv->ao_dma_desc[buffer_index].transfer_size = cpu_to_le32(nbytes);

 next_bits = le32_to_cpu(devpriv->ao_dma_desc[buffer_index].next);
 next_bits |= PLX_DMADPR_CHAINEND;
 devpriv->ao_dma_desc[buffer_index].next = cpu_to_le32(next_bits);




 next_bits = le32_to_cpu(devpriv->ao_dma_desc[prev_buffer_index].next);
 next_bits &= ~PLX_DMADPR_CHAINEND;
 devpriv->ao_dma_desc[prev_buffer_index].next = cpu_to_le32(next_bits);

 devpriv->ao_dma_index = (buffer_index + 1) % AO_DMA_RING_COUNT;

 return nbytes;
}
