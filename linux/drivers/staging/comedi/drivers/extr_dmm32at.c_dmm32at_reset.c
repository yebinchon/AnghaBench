
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DMM32AT_AI_CFG_REG ;
 scalar_t__ DMM32AT_AI_HI_CHAN_REG ;
 scalar_t__ DMM32AT_AI_LO_CHAN_REG ;
 scalar_t__ DMM32AT_AI_READBACK_REG ;
 scalar_t__ DMM32AT_AI_STATUS_REG ;
 unsigned char DMM32AT_AI_STATUS_SD0 ;
 unsigned char DMM32AT_AI_STATUS_SD1 ;
 scalar_t__ DMM32AT_CTRL_REG ;
 int DMM32AT_CTRL_RESETA ;
 scalar_t__ DMM32AT_FIFO_CTRL_REG ;
 unsigned char DMM32AT_FIFO_STATUS_EF ;
 scalar_t__ DMM32AT_FIFO_STATUS_REG ;
 scalar_t__ DMM32AT_INTCLK_REG ;
 int DMM32AT_RANGE_U10 ;
 int EIO ;
 unsigned char inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dmm32at_reset(struct comedi_device *dev)
{
 unsigned char aihi, ailo, fifostat, aistat, intstat, airback;


 outb(DMM32AT_CTRL_RESETA, dev->iobase + DMM32AT_CTRL_REG);


 usleep_range(1000, 3000);


 outb(0x0, dev->iobase + DMM32AT_FIFO_CTRL_REG);


 outb(0x0, dev->iobase + DMM32AT_INTCLK_REG);


 outb(0x80, dev->iobase + DMM32AT_AI_LO_CHAN_REG);
 outb(0xff, dev->iobase + DMM32AT_AI_HI_CHAN_REG);


 outb(DMM32AT_RANGE_U10, dev->iobase + DMM32AT_AI_CFG_REG);


 usleep_range(100, 200);


 ailo = inb(dev->iobase + DMM32AT_AI_LO_CHAN_REG);
 aihi = inb(dev->iobase + DMM32AT_AI_HI_CHAN_REG);
 fifostat = inb(dev->iobase + DMM32AT_FIFO_STATUS_REG);
 aistat = inb(dev->iobase + DMM32AT_AI_STATUS_REG);
 intstat = inb(dev->iobase + DMM32AT_INTCLK_REG);
 airback = inb(dev->iobase + DMM32AT_AI_READBACK_REG);






 if (ailo != 0x00 || aihi != 0x1f ||
     fifostat != DMM32AT_FIFO_STATUS_EF ||
     aistat != (DMM32AT_AI_STATUS_SD1 | DMM32AT_AI_STATUS_SD0) ||
     intstat != 0x00 || airback != 0x0c)
  return -EIO;

 return 0;
}
