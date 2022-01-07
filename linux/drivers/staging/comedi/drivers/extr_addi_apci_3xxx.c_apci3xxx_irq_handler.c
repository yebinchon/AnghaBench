
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t apci3xxx_irq_handler(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int status;
 unsigned int val;


 status = readl(dev->mmio + 16);
 if ((status & 0x2) == 0x2) {

  writel(status, dev->mmio + 16);

  val = readl(dev->mmio + 28);
  comedi_buf_write_samples(s, &val, 1);

  s->async->events |= COMEDI_CB_EOA;
  comedi_handle_events(dev, s);

  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
