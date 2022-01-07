
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ S526_GPCT_LSB_REG (unsigned int) ;
 scalar_t__ S526_GPCT_MSB_REG (unsigned int) ;
 int inw (scalar_t__) ;

__attribute__((used)) static unsigned int s526_gpct_read(struct comedi_device *dev,
       unsigned int chan)
{
 unsigned int val;


 val = inw(dev->iobase + S526_GPCT_LSB_REG(chan)) & 0xffff;
 val |= (inw(dev->iobase + S526_GPCT_MSB_REG(chan)) & 0xff) << 16;

 return val;
}
