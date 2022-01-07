
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 scalar_t__ AD_FIFO_REG ;
 int IRQ_HANDLED ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned short inw (scalar_t__) ;

__attribute__((used)) static irqreturn_t atmio16d_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned short val;

 val = inw(dev->iobase + AD_FIFO_REG);
 comedi_buf_write_samples(s, &val, 1);
 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
