
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ S526_GPCT_LSB_REG (unsigned int) ;
 scalar_t__ S526_GPCT_MSB_REG (unsigned int) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void s526_gpct_write(struct comedi_device *dev,
       unsigned int chan, unsigned int val)
{

 outw((val >> 16) & 0xffff, dev->iobase + S526_GPCT_MSB_REG(chan));
 outw(val & 0xffff, dev->iobase + S526_GPCT_LSB_REG(chan));
}
