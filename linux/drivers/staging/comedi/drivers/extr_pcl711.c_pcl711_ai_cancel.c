
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int PCL711_INT_STAT_CLR ;
 scalar_t__ PCL711_INT_STAT_REG ;
 int PCL711_MODE_SOFTTRIG ;
 int outb (int ,scalar_t__) ;
 int pcl711_ai_set_mode (struct comedi_device*,int ) ;

__attribute__((used)) static int pcl711_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 outb(PCL711_INT_STAT_CLR, dev->iobase + PCL711_INT_STAT_REG);
 pcl711_ai_set_mode(dev, PCL711_MODE_SOFTTRIG);
 return 0;
}
