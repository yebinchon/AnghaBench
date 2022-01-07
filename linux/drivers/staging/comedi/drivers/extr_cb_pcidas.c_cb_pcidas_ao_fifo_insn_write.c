
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int spinlock; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ao_ctrl; scalar_t__ pcibar4; scalar_t__ pcibar1; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int PCIDAS_AO_CHAN_EN (unsigned int) ;
 int PCIDAS_AO_CHAN_MASK ;
 int PCIDAS_AO_DACEN ;
 scalar_t__ PCIDAS_AO_FIFO_CLR_REG ;
 scalar_t__ PCIDAS_AO_FIFO_REG ;
 int PCIDAS_AO_PACER_MASK ;
 int PCIDAS_AO_RANGE (unsigned int,unsigned int) ;
 int PCIDAS_AO_RANGE_MASK (unsigned int) ;
 scalar_t__ PCIDAS_AO_REG ;
 int PCIDAS_AO_START ;
 int outw (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ao_fifo_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val = s->readback[chan];
 unsigned long flags;
 int i;


 outw(0, devpriv->pcibar4 + PCIDAS_AO_FIFO_CLR_REG);


 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->ao_ctrl &= ~(PCIDAS_AO_CHAN_MASK | PCIDAS_AO_RANGE_MASK(chan) |
         PCIDAS_AO_PACER_MASK);
 devpriv->ao_ctrl |= PCIDAS_AO_DACEN | PCIDAS_AO_RANGE(chan, range) |
       PCIDAS_AO_CHAN_EN(chan) | PCIDAS_AO_START;
 outw(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  outw(val, devpriv->pcibar4 + PCIDAS_AO_FIFO_REG);
 }

 s->readback[chan] = val;

 return insn->n;
}
