
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcl812_private {int ai_dma; int ai_eos; unsigned int mode_reg_int; scalar_t__ ai_poll_ptr; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma {scalar_t__ cur_dma; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct pcl812_private* private; } ;
struct comedi_cmd {scalar_t__* chanlist; unsigned int chanlist_len; int flags; int convert_src; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int CMDF_WAKE_EOS ;
 unsigned int PCL812_CTRL_PACER_DMA_TRIG ;
 unsigned int PCL812_CTRL_PACER_EOC_TRIG ;
 scalar_t__ PCL812_CTRL_REG ;

 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_update_divisors (int ) ;
 int outb (unsigned int,scalar_t__) ;
 int pcl812_ai_set_chan_range (struct comedi_device*,scalar_t__,int) ;
 int pcl812_ai_setup_dma (struct comedi_device*,struct comedi_subdevice*,int ) ;

__attribute__((used)) static int pcl812_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcl812_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int ctrl = 0;
 unsigned int i;

 pcl812_ai_set_chan_range(dev, cmd->chanlist[0], 1);

 if (dma) {
  devpriv->ai_dma = 1;
  for (i = 1; i < cmd->chanlist_len; i++)
   if (cmd->chanlist[0] != cmd->chanlist[i]) {

    devpriv->ai_dma = 0;
    break;
   }
 } else {
  devpriv->ai_dma = 0;
 }

 devpriv->ai_poll_ptr = 0;


 if (cmd->flags & CMDF_WAKE_EOS) {
  devpriv->ai_eos = 1;


  if (cmd->chanlist_len == 1)
   devpriv->ai_dma = 0;
 }

 if (devpriv->ai_dma) {

  dma->cur_dma = 0;
  pcl812_ai_setup_dma(dev, s, 0);
 }

 switch (cmd->convert_src) {
 case 128:
  comedi_8254_update_divisors(dev->pacer);
  comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);
  break;
 }

 if (devpriv->ai_dma)
  ctrl |= PCL812_CTRL_PACER_DMA_TRIG;
 else
  ctrl |= PCL812_CTRL_PACER_EOC_TRIG;
 outb(devpriv->mode_reg_int | ctrl, dev->iobase + PCL812_CTRL_REG);

 return 0;
}
