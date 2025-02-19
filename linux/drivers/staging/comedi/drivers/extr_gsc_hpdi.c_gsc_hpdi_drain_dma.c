
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hpdi_private {unsigned int dma_desc_index; unsigned int block_size; unsigned int num_dma_descriptors; unsigned int dio_count; TYPE_2__* dma_desc; int * desc_dio_buffer; scalar_t__ plx9080_mmio; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct hpdi_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_4__ {int pci_start_addr; } ;
struct TYPE_3__ {struct comedi_cmd cmd; } ;


 scalar_t__ PLX_REG_DMAPADR (unsigned int) ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void gsc_hpdi_drain_dma(struct comedi_device *dev, unsigned int channel)
{
 struct hpdi_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int idx;
 unsigned int start;
 unsigned int desc;
 unsigned int size;
 unsigned int next;

 next = readl(devpriv->plx9080_mmio + PLX_REG_DMAPADR(channel));

 idx = devpriv->dma_desc_index;
 start = le32_to_cpu(devpriv->dma_desc[idx].pci_start_addr);

 for (desc = 0; (next < start || next >= start + devpriv->block_size) &&
      desc < devpriv->num_dma_descriptors; desc++) {

  size = devpriv->block_size / sizeof(u32);
  if (cmd->stop_src == TRIG_COUNT) {
   if (size > devpriv->dio_count)
    size = devpriv->dio_count;
   devpriv->dio_count -= size;
  }
  comedi_buf_write_samples(s, devpriv->desc_dio_buffer[idx],
      size);
  idx++;
  idx %= devpriv->num_dma_descriptors;
  start = le32_to_cpu(devpriv->dma_desc[idx].pci_start_addr);

  devpriv->dma_desc_index = idx;
 }

}
