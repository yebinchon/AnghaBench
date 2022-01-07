
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 int DAC (unsigned int) ;
 scalar_t__ DAS1800_DAC ;
 scalar_t__ DAS1800_SELECT ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int outb (int ,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das1800_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int update_chan = s->n_chan - 1;
 unsigned long flags;
 int i;


 spin_lock_irqsave(&dev->spinlock, flags);

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  s->readback[chan] = val;

  val = comedi_offset_munge(s, val);


  outb(DAC(chan), dev->iobase + DAS1800_SELECT);
  outw(val, dev->iobase + DAS1800_DAC);


  if (chan != update_chan) {
   val = comedi_offset_munge(s, s->readback[update_chan]);

   outb(DAC(update_chan), dev->iobase + DAS1800_SELECT);
   outw(val, dev->iobase + DAS1800_DAC);
  }
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return insn->n;
}
