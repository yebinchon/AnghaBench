
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ daqio; scalar_t__ BADR3; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCIMDAS_AI_REG ;
 scalar_t__ PCIMDAS_AI_SOFTTRIG_REG ;
 unsigned int PCIMDAS_BURST_CONV_EN ;
 scalar_t__ PCIMDAS_BURST_REG ;
 scalar_t__ PCIMDAS_GAIN_REG ;
 unsigned int PCIMDAS_MUX (unsigned int,unsigned int) ;
 scalar_t__ PCIMDAS_MUX_REG ;
 scalar_t__ PCIMDAS_PACER_REG ;
 unsigned int PCIMDAS_PACER_SRC_MASK ;
 unsigned int PCIMDAS_PACER_SRC_POLLED ;
 int cb_pcimdas_ai_eoc ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inb (scalar_t__) ;
 unsigned int inw (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_ai_insn_read(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct cb_pcimdas_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 int n;
 unsigned int d;
 int ret;




 d = inb(devpriv->BADR3 + PCIMDAS_PACER_REG);
 if ((d & PCIMDAS_PACER_SRC_MASK) != PCIMDAS_PACER_SRC_POLLED) {
  d &= ~PCIMDAS_PACER_SRC_MASK;
  d |= PCIMDAS_PACER_SRC_POLLED;
  outb(d, devpriv->BADR3 + PCIMDAS_PACER_REG);
 }


 outb(PCIMDAS_BURST_CONV_EN, devpriv->BADR3 + PCIMDAS_BURST_REG);


 outb(range, devpriv->BADR3 + PCIMDAS_GAIN_REG);


 outb(PCIMDAS_MUX(chan, chan), devpriv->BADR3 + PCIMDAS_MUX_REG);


 for (n = 0; n < insn->n; n++) {

  outw(0, devpriv->daqio + PCIMDAS_AI_SOFTTRIG_REG);


  ret = comedi_timeout(dev, s, insn, cb_pcimdas_ai_eoc, 0);
  if (ret)
   return ret;


  data[n] = inw(devpriv->daqio + PCIMDAS_AI_REG);
 }


 return n;
}
