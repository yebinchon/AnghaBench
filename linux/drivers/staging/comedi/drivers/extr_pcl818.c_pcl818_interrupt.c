
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcl818_private {scalar_t__ usefifo; scalar_t__ dma; scalar_t__ ai_cmd_canceled; int ai_cmd_running; } ;
struct comedi_subdevice {int (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {int attached; struct comedi_subdevice* read_subdev; struct pcl818_private* private; } ;
struct comedi_cmd {int stop_arg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int scans_done; struct comedi_cmd cmd; } ;


 int IRQ_HANDLED ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl818_ai_clear_eoc (struct comedi_device*) ;
 int pcl818_handle_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl818_handle_eoc (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl818_handle_fifo (struct comedi_device*,struct comedi_subdevice*) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static irqreturn_t pcl818_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct pcl818_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_cmd *cmd = &s->async->cmd;

 if (!dev->attached || !devpriv->ai_cmd_running) {
  pcl818_ai_clear_eoc(dev);
  return IRQ_HANDLED;
 }

 if (devpriv->ai_cmd_canceled) {






  s->async->scans_done = cmd->stop_arg;
  s->cancel(dev, s);
  return IRQ_HANDLED;
 }

 if (devpriv->dma)
  pcl818_handle_dma(dev, s);
 else if (devpriv->usefifo)
  pcl818_handle_fifo(dev, s);
 else
  pcl818_handle_eoc(dev, s);

 pcl818_ai_clear_eoc(dev);

 comedi_handle_events(dev, s);
 return IRQ_HANDLED;
}
