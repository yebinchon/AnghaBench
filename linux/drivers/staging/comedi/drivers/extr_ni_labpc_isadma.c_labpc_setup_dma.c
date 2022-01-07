
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct labpc_private {unsigned int count; int cmd3; TYPE_1__* dma; } ;
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_isadma_desc {unsigned int size; int maxsize; } ;
struct comedi_device {struct labpc_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_4__ {struct comedi_cmd cmd; } ;
struct TYPE_3__ {struct comedi_isadma_desc* desc; } ;


 int CMD3_DMAEN ;
 int CMD3_DMATCINTEN ;
 scalar_t__ TRIG_COUNT ;
 unsigned int comedi_bytes_per_sample (struct comedi_subdevice*) ;
 int comedi_isadma_program (struct comedi_isadma_desc*) ;
 unsigned int labpc_suggest_transfer_size (struct comedi_device*,struct comedi_subdevice*,int ) ;

void labpc_setup_dma(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct labpc_private *devpriv = dev->private;
 struct comedi_isadma_desc *desc = &devpriv->dma->desc[0];
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int sample_size = comedi_bytes_per_sample(s);


 desc->size = labpc_suggest_transfer_size(dev, s, desc->maxsize);
 if (cmd->stop_src == TRIG_COUNT &&
     devpriv->count * sample_size < desc->size)
  desc->size = devpriv->count * sample_size;

 comedi_isadma_program(desc);


 devpriv->cmd3 |= (CMD3_DMAEN | CMD3_DMATCINTEN);
}
