
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int DT2811_ADCSR_ADMODE (int ) ;
 scalar_t__ DT2811_ADCSR_REG ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int dt2811_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{






 outb(DT2811_ADCSR_ADMODE(0), dev->iobase + DT2811_ADCSR_REG);

 return 0;
}
