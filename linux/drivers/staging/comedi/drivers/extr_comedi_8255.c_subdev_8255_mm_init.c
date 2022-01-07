
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int __subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int (*) (struct comedi_device*,int,int,int,unsigned long),unsigned long,int) ;

int subdev_8255_mm_init(struct comedi_device *dev, struct comedi_subdevice *s,
   int (*io)(struct comedi_device *dev, int dir, int port,
      int data, unsigned long regbase),
   unsigned long regbase)
{
 return __subdev_8255_init(dev, s, io, regbase, 1);
}
