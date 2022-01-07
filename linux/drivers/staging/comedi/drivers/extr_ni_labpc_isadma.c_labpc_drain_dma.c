
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct labpc_private {unsigned int count; TYPE_1__* dma; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_isadma_desc {unsigned int size; int virt_addr; int chan; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct labpc_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {struct comedi_isadma_desc* desc; } ;


 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned int comedi_isadma_disable (int ) ;
 unsigned int comedi_samples_to_bytes (struct comedi_subdevice*,unsigned int) ;

void labpc_drain_dma(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;
 struct comedi_isadma_desc *desc = &devpriv->dma->desc[0];
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int max_samples = comedi_bytes_to_samples(s, desc->size);
 unsigned int residue;
 unsigned int nsamples;
 unsigned int leftover;






 residue = comedi_isadma_disable(desc->chan);





 nsamples = max_samples - comedi_bytes_to_samples(s, residue);
 if (cmd->stop_src == TRIG_COUNT) {
  if (devpriv->count <= nsamples) {
   nsamples = devpriv->count;
   leftover = 0;
  } else {
   leftover = devpriv->count - nsamples;
   if (leftover > max_samples)
    leftover = max_samples;
  }
  devpriv->count -= nsamples;
 } else {
  leftover = max_samples;
 }
 desc->size = comedi_samples_to_bytes(s, leftover);

 comedi_buf_write_samples(s, desc->virt_addr, nsamples);
}
