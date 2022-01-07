
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int DT2811_ADCSR_ADMODE (int ) ;
 int DT2811_ADCSR_CLRERROR ;
 scalar_t__ DT2811_ADCSR_REG ;
 scalar_t__ DT2811_ADDATA_HI_REG ;
 scalar_t__ DT2811_ADDATA_LO_REG ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void dt2811_reset(struct comedi_device *dev)
{

 outb(DT2811_ADCSR_ADMODE(0), dev->iobase + DT2811_ADCSR_REG);
 usleep_range(100, 1000);
 inb(dev->iobase + DT2811_ADDATA_LO_REG);
 inb(dev->iobase + DT2811_ADDATA_HI_REG);
 outb(DT2811_ADCSR_ADMODE(0) | DT2811_ADCSR_CLRERROR,
      dev->iobase + DT2811_ADCSR_REG);
}
