
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL711_AO_LSB_REG (unsigned int) ;
 scalar_t__ PCL711_AO_MSB_REG (unsigned int) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void pcl711_ao_write(struct comedi_device *dev,
       unsigned int chan, unsigned int val)
{
 outb(val & 0xff, dev->iobase + PCL711_AO_LSB_REG(chan));
 outb((val >> 8) & 0xff, dev->iobase + PCL711_AO_MSB_REG(chan));
}
