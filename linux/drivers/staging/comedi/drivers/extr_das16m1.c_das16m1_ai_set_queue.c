
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 scalar_t__ DAS16M1_Q_ADDR_REG ;
 unsigned int DAS16M1_Q_CHAN (unsigned int) ;
 unsigned int DAS16M1_Q_RANGE (unsigned int) ;
 scalar_t__ DAS16M1_Q_REG ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void das16m1_ai_set_queue(struct comedi_device *dev,
     unsigned int *chanspec, unsigned int len)
{
 unsigned int i;

 for (i = 0; i < len; i++) {
  unsigned int chan = CR_CHAN(chanspec[i]);
  unsigned int range = CR_RANGE(chanspec[i]);

  outb(i, dev->iobase + DAS16M1_Q_ADDR_REG);
  outb(DAS16M1_Q_CHAN(chan) | DAS16M1_Q_RANGE(range),
       dev->iobase + DAS16M1_Q_REG);
 }
}
