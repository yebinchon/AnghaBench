
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int das800_disable (struct comedi_device*) ;

__attribute__((used)) static int das800_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 das800_disable(dev);
 return 0;
}
