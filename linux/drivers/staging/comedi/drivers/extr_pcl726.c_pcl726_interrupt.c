
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl726_private {scalar_t__ cmd_running; } ;
struct comedi_subdevice {int state; } ;
struct comedi_device {struct pcl726_private* private; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int *,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl726_intr_cancel (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static irqreturn_t pcl726_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct pcl726_private *devpriv = dev->private;

 if (devpriv->cmd_running) {
  pcl726_intr_cancel(dev, s);

  comedi_buf_write_samples(s, &s->state, 1);
  comedi_handle_events(dev, s);
 }

 return IRQ_HANDLED;
}
