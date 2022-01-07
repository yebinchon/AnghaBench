
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_device {scalar_t__ mmio; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NI6527_CLR_IRQS ;
 scalar_t__ NI6527_CLR_REG ;
 unsigned int NI6527_STATUS_EDGE ;
 unsigned int NI6527_STATUS_IRQ ;
 scalar_t__ NI6527_STATUS_REG ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int *,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t ni6527_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int status;

 status = readb(dev->mmio + NI6527_STATUS_REG);
 if (!(status & NI6527_STATUS_IRQ))
  return IRQ_NONE;

 if (status & NI6527_STATUS_EDGE) {
  comedi_buf_write_samples(s, &s->state, 1);
  comedi_handle_events(dev, s);
 }

 writeb(NI6527_CLR_IRQS, dev->mmio + NI6527_CLR_REG);

 return IRQ_HANDLED;
}
