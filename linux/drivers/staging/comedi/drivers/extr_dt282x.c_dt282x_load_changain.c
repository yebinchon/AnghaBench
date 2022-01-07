
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int adcsr; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;


 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 int DT2821_ADCSR_CHAN (unsigned int) ;
 int DT2821_ADCSR_GS (unsigned int) ;
 scalar_t__ DT2821_ADCSR_REG ;
 int DT2821_CHANCSR_LLE ;
 int DT2821_CHANCSR_NUMB (int) ;
 scalar_t__ DT2821_CHANCSR_REG ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void dt282x_load_changain(struct comedi_device *dev, int n,
     unsigned int *chanlist)
{
 struct dt282x_private *devpriv = dev->private;
 int i;

 outw(DT2821_CHANCSR_LLE | DT2821_CHANCSR_NUMB(n),
      dev->iobase + DT2821_CHANCSR_REG);
 for (i = 0; i < n; i++) {
  unsigned int chan = CR_CHAN(chanlist[i]);
  unsigned int range = CR_RANGE(chanlist[i]);

  outw(devpriv->adcsr |
       DT2821_ADCSR_GS(range) |
       DT2821_ADCSR_CHAN(chan),
       dev->iobase + DT2821_ADCSR_REG);
 }
 outw(DT2821_CHANCSR_NUMB(n), dev->iobase + DT2821_CHANCSR_REG);
}
