
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS6402_STATUS_REG ;
 unsigned int DAS6402_STATUS_W_EXTEND ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void das6402_set_extended(struct comedi_device *dev,
     unsigned int val)
{
 outb(DAS6402_STATUS_W_EXTEND, dev->iobase + DAS6402_STATUS_REG);
 outb(DAS6402_STATUS_W_EXTEND | val, dev->iobase + DAS6402_STATUS_REG);
 outb(val, dev->iobase + DAS6402_STATUS_REG);
}
