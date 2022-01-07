
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int attached; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_RETVAL (int) ;
 int dio200_handle_read_intr (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static irqreturn_t dio200_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 int handled;

 if (!dev->attached)
  return IRQ_NONE;

 handled = dio200_handle_read_intr(dev, s);

 return IRQ_RETVAL(handled);
}
