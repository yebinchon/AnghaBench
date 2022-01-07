
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL816_MUX_REG ;
 scalar_t__ PCL816_RANGE_REG ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void pcl816_ai_set_chan_range(struct comedi_device *dev,
         unsigned int chan,
         unsigned int range)
{
 outb(chan, dev->iobase + PCL816_MUX_REG);
 outb(range, dev->iobase + PCL816_RANGE_REG);
}
