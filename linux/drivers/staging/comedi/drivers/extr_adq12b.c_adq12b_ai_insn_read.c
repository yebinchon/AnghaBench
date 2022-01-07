
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct adq12b_private* private; } ;
struct adq12b_private {unsigned int last_ctreg; } ;


 scalar_t__ ADQ12B_ADHIG ;
 scalar_t__ ADQ12B_ADLOW ;
 scalar_t__ ADQ12B_CTREG ;
 unsigned int ADQ12B_CTREG_CHAN (unsigned int) ;
 unsigned int ADQ12B_CTREG_RANGE (unsigned int) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int adq12b_ai_eoc ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int adq12b_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct adq12b_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val;
 int ret;
 int i;


 val = ADQ12B_CTREG_RANGE(range) | ADQ12B_CTREG_CHAN(chan);
 if (val != devpriv->last_ctreg) {
  outb(val, dev->iobase + ADQ12B_CTREG);
  devpriv->last_ctreg = val;
  usleep_range(50, 100);
 }

 val = inb(dev->iobase + ADQ12B_ADLOW);

 for (i = 0; i < insn->n; i++) {
  ret = comedi_timeout(dev, s, insn, adq12b_ai_eoc, 0);
  if (ret)
   return ret;

  val = inb(dev->iobase + ADQ12B_ADHIG) << 8;
  val |= inb(dev->iobase + ADQ12B_ADLOW);

  data[i] = val;
 }

 return insn->n;
}
