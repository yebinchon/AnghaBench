
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int PARPORT_CTRL_IRQ_ENA ;
 scalar_t__ PARPORT_CTRL_REG ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int *,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static irqreturn_t parport_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int ctrl;

 ctrl = inb(dev->iobase + PARPORT_CTRL_REG);
 if (!(ctrl & PARPORT_CTRL_IRQ_ENA))
  return IRQ_NONE;

 comedi_buf_write_samples(s, &s->state, 1);
 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
