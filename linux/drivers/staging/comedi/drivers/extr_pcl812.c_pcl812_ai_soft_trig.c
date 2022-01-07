
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL812_SOFTTRIG_REG ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void pcl812_ai_soft_trig(struct comedi_device *dev)
{

 outb(255, dev->iobase + PCL812_SOFTTRIG_REG);
}
