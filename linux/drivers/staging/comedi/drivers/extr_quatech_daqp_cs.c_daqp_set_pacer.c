
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAQP_PACER_HIGH_REG ;
 scalar_t__ DAQP_PACER_LOW_REG ;
 scalar_t__ DAQP_PACER_MID_REG ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void daqp_set_pacer(struct comedi_device *dev, unsigned int val)
{
 outb(val & 0xff, dev->iobase + DAQP_PACER_LOW_REG);
 outb((val >> 8) & 0xff, dev->iobase + DAQP_PACER_MID_REG);
 outb((val >> 16) & 0xff, dev->iobase + DAQP_PACER_HIGH_REG);
}
