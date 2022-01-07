
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 scalar_t__ DAS1800_QRAM ;
 scalar_t__ DAS1800_QRAM_ADDRESS ;
 scalar_t__ DAS1800_SELECT ;
 unsigned int QRAM ;
 int outb (unsigned int,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void das1800_ai_set_chanlist(struct comedi_device *dev,
        unsigned int *chanlist, unsigned int len)
{
 unsigned long flags;
 unsigned int i;


 spin_lock_irqsave(&dev->spinlock, flags);


 outb(QRAM, dev->iobase + DAS1800_SELECT);
 outb(len - 1, dev->iobase + DAS1800_QRAM_ADDRESS);


 for (i = 0; i < len; i++) {
  unsigned int chan = CR_CHAN(chanlist[i]);
  unsigned int range = CR_RANGE(chanlist[i]);
  unsigned short val;

  val = chan | ((range & 0x3) << 8);
  outw(val, dev->iobase + DAS1800_QRAM);
 }


 outb(len - 1, dev->iobase + DAS1800_QRAM_ADDRESS);

 spin_unlock_irqrestore(&dev->spinlock, flags);
}
