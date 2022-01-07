
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int do_bits; } ;


 int APCI3120_CTR0_DO_BITS (int ) ;
 scalar_t__ APCI3120_CTR0_REG ;
 int APCI3120_CTR0_TIMER_SEL (unsigned int) ;
 scalar_t__ APCI3120_TIMER_REG ;
 int outb (int,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void apci3120_timer_write(struct comedi_device *dev,
     unsigned int timer, unsigned int val)
{
 struct apci3120_private *devpriv = dev->private;


 outb(APCI3120_CTR0_DO_BITS(devpriv->do_bits) |
      APCI3120_CTR0_TIMER_SEL(timer),
      dev->iobase + APCI3120_CTR0_REG);
 outw(val & 0xffff, dev->iobase + APCI3120_TIMER_REG);

 if (timer == 2) {

  outb(APCI3120_CTR0_DO_BITS(devpriv->do_bits) |
       APCI3120_CTR0_TIMER_SEL(timer + 1),
       dev->iobase + APCI3120_CTR0_REG);
  outw((val >> 16) & 0xffff, dev->iobase + APCI3120_TIMER_REG);
 }
}
