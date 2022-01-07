
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL818_MUX_REG ;
 int PCL818_MUX_SCAN (unsigned int,unsigned int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void pcl818_ai_set_chan_scan(struct comedi_device *dev,
        unsigned int first_chan,
        unsigned int last_chan)
{
 outb(PCL818_MUX_SCAN(first_chan, last_chan),
      dev->iobase + PCL818_MUX_REG);
}
