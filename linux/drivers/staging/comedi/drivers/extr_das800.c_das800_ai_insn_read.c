
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das800_private {unsigned int do_bits; } ;
struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int spinlock; struct das800_private* private; } ;


 int CONTROL1 ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ DAS800_GAIN ;
 scalar_t__ DAS800_MSB ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int das800_ai_eoc ;
 unsigned int das800_ai_get_sample (struct comedi_device*) ;
 int das800_disable (struct comedi_device*) ;
 int das800_ind_write (struct comedi_device*,unsigned int,int ) ;
 int outb (unsigned int,scalar_t__) ;
 int outb_p (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int das800_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct das800_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned long irq_flags;
 unsigned int val;
 int ret;
 int i;

 das800_disable(dev);


 spin_lock_irqsave(&dev->spinlock, irq_flags);
 das800_ind_write(dev, chan | devpriv->do_bits, CONTROL1);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);


 if (s->maxdata == 0x0fff && range)
  range += 0x7;
 range &= 0xf;
 outb(range, dev->iobase + DAS800_GAIN);

 udelay(5);

 for (i = 0; i < insn->n; i++) {

  outb_p(0, dev->iobase + DAS800_MSB);

  ret = comedi_timeout(dev, s, insn, das800_ai_eoc, 0);
  if (ret)
   return ret;

  val = das800_ai_get_sample(dev);
  if (s->maxdata == 0x0fff)
   val >>= 4;
  data[i] = val & s->maxdata;
 }

 return insn->n;
}
