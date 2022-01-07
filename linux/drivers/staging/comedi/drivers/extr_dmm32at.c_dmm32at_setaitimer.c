
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DMM32AT_CLK1 ;
 scalar_t__ DMM32AT_CLK2 ;
 scalar_t__ DMM32AT_CLKCT ;
 unsigned char DMM32AT_CLKCT1 ;
 unsigned char DMM32AT_CLKCT2 ;
 scalar_t__ DMM32AT_CTRDIO_CFG_REG ;
 unsigned char DMM32AT_CTRL_PAGE_8254 ;
 scalar_t__ DMM32AT_CTRL_REG ;
 unsigned char DMM32AT_INTCLK_ADINT ;
 unsigned char DMM32AT_INTCLK_CLKEN ;
 unsigned char DMM32AT_INTCLK_CLKSEL ;
 scalar_t__ DMM32AT_INTCLK_REG ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static void dmm32at_setaitimer(struct comedi_device *dev, unsigned int nansec)
{
 unsigned char lo1, lo2, hi2;
 unsigned short both2;


 lo1 = 200;
 both2 = nansec / 20000;
 hi2 = (both2 & 0xff00) >> 8;
 lo2 = both2 & 0x00ff;


 outb(0, dev->iobase + DMM32AT_CTRDIO_CFG_REG);


 outb(DMM32AT_CTRL_PAGE_8254, dev->iobase + DMM32AT_CTRL_REG);


 outb(DMM32AT_CLKCT1, dev->iobase + DMM32AT_CLKCT);
 outb(lo1, dev->iobase + DMM32AT_CLK1);


 outb(DMM32AT_CLKCT2, dev->iobase + DMM32AT_CLKCT);
 outb(lo2, dev->iobase + DMM32AT_CLK2);
 outb(hi2, dev->iobase + DMM32AT_CLK2);


 outb(DMM32AT_INTCLK_ADINT |
      DMM32AT_INTCLK_CLKEN | DMM32AT_INTCLK_CLKSEL,
      dev->iobase + DMM32AT_INTCLK_REG);
}
