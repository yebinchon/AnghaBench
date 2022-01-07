
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* read_subdev; struct apci1500_private* private; } ;
struct apci1500_private {scalar_t__ amcc; } ;
typedef int irqreturn_t ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 scalar_t__ APCI1500_Z8536_PORTB_REG ;
 unsigned int INTCSR_INTR_ASSERTED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int Z8536_PA_CMDSTAT_REG ;
 int Z8536_PB_CMDSTAT_REG ;
 scalar_t__ apci1500_ack_irq (struct comedi_device*,int ) ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int inb (scalar_t__) ;
 unsigned int inl (scalar_t__) ;

__attribute__((used)) static irqreturn_t apci1500_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct apci1500_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int status = 0;
 unsigned int val;

 val = inl(devpriv->amcc + AMCC_OP_REG_INTCSR);
 if (!(val & INTCSR_INTR_ASSERTED))
  return IRQ_NONE;

 if (apci1500_ack_irq(dev, Z8536_PA_CMDSTAT_REG))
  status |= 0x01;

 if (apci1500_ack_irq(dev, Z8536_PB_CMDSTAT_REG)) {

  val = inb(dev->iobase + APCI1500_Z8536_PORTB_REG);
  val &= 0xc0;
  if (val) {
   if (val & 0x80)
    status |= 0x40;
   if (val & 0x40)
    status |= 0x80;
  } else {
   status |= 0x02;
  }
 }
 comedi_buf_write_samples(s, &status, 1);
 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
