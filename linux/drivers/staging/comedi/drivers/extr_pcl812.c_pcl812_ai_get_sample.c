
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL812_AI_LSB_REG ;
 scalar_t__ PCL812_AI_MSB_REG ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static unsigned int pcl812_ai_get_sample(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned int val;

 val = inb(dev->iobase + PCL812_AI_MSB_REG) << 8;
 val |= inb(dev->iobase + PCL812_AI_LSB_REG);

 return val & s->maxdata;
}
