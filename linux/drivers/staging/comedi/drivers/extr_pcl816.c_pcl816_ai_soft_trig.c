
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL816_AI_LSB_REG ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void pcl816_ai_soft_trig(struct comedi_device *dev)
{

 outb(0, dev->iobase + PCL816_AI_LSB_REG);
}
