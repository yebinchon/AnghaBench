
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 unsigned int DAS6402_MODE_ENHANCED ;
 scalar_t__ DAS6402_MODE_REG ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void das6402_set_mode(struct comedi_device *dev,
        unsigned int mode)
{
 outb(DAS6402_MODE_ENHANCED | mode, dev->iobase + DAS6402_MODE_REG);
}
