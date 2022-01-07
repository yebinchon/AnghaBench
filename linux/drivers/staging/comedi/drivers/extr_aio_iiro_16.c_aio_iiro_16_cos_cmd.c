
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int aio_iiro_enable_irq (struct comedi_device*,int) ;

__attribute__((used)) static int aio_iiro_16_cos_cmd(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 aio_iiro_enable_irq(dev, 1);

 return 0;
}
