
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcl818_private {int ai_cmd_canceled; scalar_t__ ai_cmd_running; scalar_t__ usefifo; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma {int chan; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct pcl818_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct TYPE_2__ {scalar_t__ scans_done; struct comedi_cmd cmd; } ;


 int PCL818_CTRL_DISABLE_TRIG ;
 scalar_t__ PCL818_CTRL_REG ;
 scalar_t__ PCL818_FI_ENABLE ;
 scalar_t__ PCL818_FI_FLUSH ;
 scalar_t__ PCL818_FI_INTCLR ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_NONE ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_isadma_disable (int ) ;
 int outb (int ,scalar_t__) ;
 int pcl818_ai_clear_eoc (struct comedi_device*) ;

__attribute__((used)) static int pcl818_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct pcl818_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_cmd *cmd = &s->async->cmd;

 if (!devpriv->ai_cmd_running)
  return 0;

 if (dma) {
  if (cmd->stop_src == TRIG_NONE ||
      (cmd->stop_src == TRIG_COUNT &&
       s->async->scans_done < cmd->stop_arg)) {
   if (!devpriv->ai_cmd_canceled) {




    devpriv->ai_cmd_canceled = 1;
    return 0;
   }
  }
  comedi_isadma_disable(dma->chan);
 }

 outb(PCL818_CTRL_DISABLE_TRIG, dev->iobase + PCL818_CTRL_REG);
 comedi_8254_pacer_enable(dev->pacer, 1, 2, 0);
 pcl818_ai_clear_eoc(dev);

 if (devpriv->usefifo) {
  outb(0, dev->iobase + PCL818_FI_INTCLR);
  outb(0, dev->iobase + PCL818_FI_FLUSH);
  outb(0, dev->iobase + PCL818_FI_ENABLE);
 }
 devpriv->ai_cmd_running = 0;
 devpriv->ai_cmd_canceled = 0;

 return 0;
}
