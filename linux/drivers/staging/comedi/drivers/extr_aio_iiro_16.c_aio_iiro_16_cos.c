
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 scalar_t__ AIO_IIRO_16_STATUS ;
 unsigned int AIO_IIRO_16_STATUS_IRQE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int aio_iiro_16_read_inputs (struct comedi_device*) ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static irqreturn_t aio_iiro_16_cos(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int status;
 unsigned int val;

 status = inb(dev->iobase + AIO_IIRO_16_STATUS);
 if (!(status & AIO_IIRO_16_STATUS_IRQE))
  return IRQ_NONE;

 val = aio_iiro_16_read_inputs(dev);
 val |= (status << 16);

 comedi_buf_write_samples(s, &val, 1);
 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
