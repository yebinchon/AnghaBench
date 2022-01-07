
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int adcsr; int supcsr; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;


 scalar_t__ DT2821_ADCSR_REG ;
 int DT2821_SUPCSR_ADCINIT ;
 scalar_t__ DT2821_SUPCSR_REG ;
 int dt282x_disable_dma (struct comedi_device*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int dt282x_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct dt282x_private *devpriv = dev->private;

 dt282x_disable_dma(dev);

 devpriv->adcsr = 0;
 outw(devpriv->adcsr, dev->iobase + DT2821_ADCSR_REG);

 devpriv->supcsr = 0;
 outw(devpriv->supcsr | DT2821_SUPCSR_ADCINIT,
      dev->iobase + DT2821_SUPCSR_REG);

 return 0;
}
