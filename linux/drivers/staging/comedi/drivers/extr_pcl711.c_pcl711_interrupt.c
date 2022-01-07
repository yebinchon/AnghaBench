
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; int attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 int IRQ_HANDLED ;
 int PCL711_INT_STAT_CLR ;
 scalar_t__ PCL711_INT_STAT_REG ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_err (int ,char*) ;
 int outb (int ,scalar_t__) ;
 unsigned int pcl711_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static irqreturn_t pcl711_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int data;

 if (!dev->attached) {
  dev_err(dev->class_dev, "spurious interrupt\n");
  return IRQ_HANDLED;
 }

 data = pcl711_ai_get_sample(dev, s);

 outb(PCL711_INT_STAT_CLR, dev->iobase + PCL711_INT_STAT_REG);

 comedi_buf_write_samples(s, &data, 1);

 if (cmd->stop_src == TRIG_COUNT &&
     s->async->scans_done >= cmd->stop_arg)
  s->async->events |= COMEDI_CB_EOA;

 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
