
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; int attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;
typedef int irqreturn_t ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_OVERFLOW ;
 unsigned int DT2811_ADCSR_ADDONE ;
 unsigned int DT2811_ADCSR_ADERROR ;
 unsigned int DT2811_ADCSR_CLRERROR ;
 scalar_t__ DT2811_ADCSR_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned short dt2811_ai_read_sample (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t dt2811_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int status;

 if (!dev->attached)
  return IRQ_NONE;

 status = inb(dev->iobase + DT2811_ADCSR_REG);

 if (status & DT2811_ADCSR_ADERROR) {
  async->events |= COMEDI_CB_OVERFLOW;

  outb(status | DT2811_ADCSR_CLRERROR,
       dev->iobase + DT2811_ADCSR_REG);
 }

 if (status & DT2811_ADCSR_ADDONE) {
  unsigned short val;

  val = dt2811_ai_read_sample(dev, s);
  comedi_buf_write_samples(s, &val, 1);
 }

 if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg)
  async->events |= COMEDI_CB_EOA;

 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
