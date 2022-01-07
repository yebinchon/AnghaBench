
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_device {scalar_t__ attached; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int *,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int pc236_intr_check (struct comedi_device*) ;

__attribute__((used)) static irqreturn_t pc236_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 bool handled;

 handled = pc236_intr_check(dev);
 if (dev->attached && handled) {
  comedi_buf_write_samples(s, &s->state, 1);
  comedi_handle_events(dev, s);
 }
 return IRQ_RETVAL(handled);
}
