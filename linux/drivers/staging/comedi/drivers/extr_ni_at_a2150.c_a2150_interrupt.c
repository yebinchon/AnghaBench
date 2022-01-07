
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_isadma_desc {unsigned short* virt_addr; unsigned int size; int chan; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {scalar_t__ iobase; int attached; struct comedi_subdevice* read_subdev; struct a2150_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {int events; struct comedi_cmd cmd; } ;
struct a2150_private {unsigned int count; struct comedi_isadma* dma; } ;
typedef int irqreturn_t ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DMA_TC_BIT ;
 scalar_t__ DMA_TC_CLEAR_REG ;
 int INTR_BIT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OVFL_BIT ;
 scalar_t__ STATUS_REG ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_NONE ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int comedi_isadma_disable (int ) ;
 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 unsigned int comedi_samples_to_bytes (struct comedi_subdevice*,unsigned int) ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t a2150_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct a2150_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[0];
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned short *buf = desc->virt_addr;
 unsigned int max_points, num_points, residue, leftover;
 unsigned short dpnt;
 int status;
 int i;

 if (!dev->attached)
  return IRQ_HANDLED;

 status = inw(dev->iobase + STATUS_REG);
 if ((status & INTR_BIT) == 0)
  return IRQ_NONE;

 if (status & OVFL_BIT) {
  async->events |= COMEDI_CB_ERROR;
  comedi_handle_events(dev, s);
 }

 if ((status & DMA_TC_BIT) == 0) {
  async->events |= COMEDI_CB_ERROR;
  comedi_handle_events(dev, s);
  return IRQ_HANDLED;
 }






 residue = comedi_isadma_disable(desc->chan);


 max_points = comedi_bytes_to_samples(s, desc->size);
 num_points = max_points - comedi_bytes_to_samples(s, residue);
 if (devpriv->count < num_points && cmd->stop_src == TRIG_COUNT)
  num_points = devpriv->count;


 leftover = 0;
 if (cmd->stop_src == TRIG_NONE) {
  leftover = comedi_bytes_to_samples(s, desc->size);
 } else if (devpriv->count > max_points) {
  leftover = devpriv->count - max_points;
  if (leftover > max_points)
   leftover = max_points;
 }





 if (residue)
  leftover = 0;

 for (i = 0; i < num_points; i++) {

  dpnt = buf[i];

  dpnt ^= 0x8000;
  comedi_buf_write_samples(s, &dpnt, 1);
  if (cmd->stop_src == TRIG_COUNT) {
   if (--devpriv->count == 0) {
    async->events |= COMEDI_CB_EOA;
    break;
   }
  }
 }

 if (leftover) {
  desc->size = comedi_samples_to_bytes(s, leftover);
  comedi_isadma_program(desc);
 }

 comedi_handle_events(dev, s);


 outw(0x00, dev->iobase + DMA_TC_CLEAR_REG);

 return IRQ_HANDLED;
}
