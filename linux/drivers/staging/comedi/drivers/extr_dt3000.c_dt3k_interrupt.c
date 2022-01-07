
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; int attached; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 unsigned int DPR_INTR_ADFULL ;
 unsigned int DPR_INTR_ADHWERR ;
 unsigned int DPR_INTR_ADSWERR ;
 scalar_t__ DPR_INTR_FLAG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int debug_n_ints ;
 int dt3k_ai_empty_fifo (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static irqreturn_t dt3k_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int status;

 if (!dev->attached)
  return IRQ_NONE;

 status = readw(dev->mmio + DPR_INTR_FLAG);

 if (status & DPR_INTR_ADFULL)
  dt3k_ai_empty_fifo(dev, s);

 if (status & (DPR_INTR_ADSWERR | DPR_INTR_ADHWERR))
  s->async->events |= COMEDI_CB_ERROR;

 debug_n_ints++;
 if (debug_n_ints >= 10)
  s->async->events |= COMEDI_CB_EOA;

 comedi_handle_events(dev, s);
 return IRQ_HANDLED;
}
