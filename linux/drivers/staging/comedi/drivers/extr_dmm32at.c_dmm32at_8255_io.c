
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int DMM32AT_CTRL_PAGE_8255 ;
 scalar_t__ DMM32AT_CTRL_REG ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dmm32at_8255_io(struct comedi_device *dev,
      int dir, int port, int data, unsigned long regbase)
{

 outb(DMM32AT_CTRL_PAGE_8255, dev->iobase + DMM32AT_CTRL_REG);

 if (dir) {
  outb(data, dev->iobase + regbase + port);
  return 0;
 }
 return inb(dev->iobase + regbase + port);
}
