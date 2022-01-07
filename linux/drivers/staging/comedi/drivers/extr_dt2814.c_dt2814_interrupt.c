
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dt2814_private {int ntrig; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; int attached; struct comedi_subdevice* read_subdev; struct dt2814_private* private; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 scalar_t__ DT2814_CSR ;
 scalar_t__ DT2814_DATA ;
 int DT2814_FINISH ;
 int DT2814_TIMEOUT ;
 int IRQ_HANDLED ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_err (int ,char*) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t dt2814_interrupt(int irq, void *d)
{
 int lo, hi;
 struct comedi_device *dev = d;
 struct dt2814_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 int data;

 if (!dev->attached) {
  dev_err(dev->class_dev, "spurious interrupt\n");
  return IRQ_HANDLED;
 }

 hi = inb(dev->iobase + DT2814_DATA);
 lo = inb(dev->iobase + DT2814_DATA);

 data = (hi << 4) | (lo >> 4);

 if (!(--devpriv->ntrig)) {
  int i;

  outb(0, dev->iobase + DT2814_CSR);





  for (i = 0; i < DT2814_TIMEOUT; i++) {
   if (inb(dev->iobase + DT2814_CSR) & DT2814_FINISH)
    break;
  }
  inb(dev->iobase + DT2814_DATA);
  inb(dev->iobase + DT2814_DATA);

  s->async->events |= COMEDI_CB_EOA;
 }
 comedi_handle_events(dev, s);
 return IRQ_HANDLED;
}
