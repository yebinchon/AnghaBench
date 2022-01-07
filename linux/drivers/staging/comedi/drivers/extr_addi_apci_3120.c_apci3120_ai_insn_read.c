
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int mode; } ;


 scalar_t__ APCI3120_AI_FIFO_REG ;
 scalar_t__ APCI3120_MODE_REG ;
 int APCI3120_MODE_TIMER2_AS_TIMER ;
 int APCI3120_MODE_TIMER2_CLK_OSC ;
 int APCI3120_TIMER_MODE4 ;
 int CMDF_ROUND_NEAREST ;
 int apci3120_ai_eoc ;
 unsigned int apci3120_ns_to_timer (struct comedi_device*,int ,int,int ) ;
 int apci3120_set_chanlist (struct comedi_device*,struct comedi_subdevice*,int,int *) ;
 int apci3120_timer_enable (struct comedi_device*,int ,int) ;
 int apci3120_timer_set_mode (struct comedi_device*,int ,int ) ;
 int apci3120_timer_write (struct comedi_device*,int ,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inw (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int apci3120_ai_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct apci3120_private *devpriv = dev->private;
 unsigned int divisor;
 int ret;
 int i;


 devpriv->mode = APCI3120_MODE_TIMER2_CLK_OSC |
   APCI3120_MODE_TIMER2_AS_TIMER;
 outb(devpriv->mode, dev->iobase + APCI3120_MODE_REG);


 apci3120_set_chanlist(dev, s, 1, &insn->chanspec);







 apci3120_timer_set_mode(dev, 0, APCI3120_TIMER_MODE4);
 apci3120_timer_enable(dev, 0, 1);


 divisor = apci3120_ns_to_timer(dev, 0, 10000, CMDF_ROUND_NEAREST);

 for (i = 0; i < insn->n; i++) {

  apci3120_timer_write(dev, 0, divisor);

  ret = comedi_timeout(dev, s, insn, apci3120_ai_eoc, 0);
  if (ret)
   return ret;

  data[i] = inw(dev->iobase + APCI3120_AI_FIFO_REG);
 }

 return insn->n;
}
