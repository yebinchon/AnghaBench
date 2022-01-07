
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; scalar_t__ iobase; } ;


 scalar_t__ DT2821_ADCSR_REG ;
 scalar_t__ DT2821_CHANCSR_REG ;
 scalar_t__ DT2821_DACSR_REG ;
 int DT2821_SUPCSR_BDINIT ;
 scalar_t__ DT2821_SUPCSR_REG ;
 scalar_t__ DT2821_TMRCTR_REG ;
 int EIO ;
 int dev_err (int ,char*) ;
 int inw (scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int dt282x_initialize(struct comedi_device *dev)
{

 outw(DT2821_SUPCSR_BDINIT, dev->iobase + DT2821_SUPCSR_REG);
 inw(dev->iobase + DT2821_ADCSR_REG);





 if (((inw(dev->iobase + DT2821_ADCSR_REG) & 0xfff0) != 0x7c00) ||
     ((inw(dev->iobase + DT2821_CHANCSR_REG) & 0xf0f0) != 0x70f0) ||
     ((inw(dev->iobase + DT2821_DACSR_REG) & 0x7c93) != 0x7c90) ||
     ((inw(dev->iobase + DT2821_SUPCSR_REG) & 0xf8ff) != 0x0000) ||
     ((inw(dev->iobase + DT2821_TMRCTR_REG) & 0xff00) != 0xf000)) {
  dev_err(dev->class_dev, "board not found\n");
  return -EIO;
 }
 return 0;
}
