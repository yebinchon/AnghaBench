
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DMM32AT_INTCLK_REG ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dmm32at_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{

 outb(0x0, dev->iobase + DMM32AT_INTCLK_REG);
 return 0;
}
