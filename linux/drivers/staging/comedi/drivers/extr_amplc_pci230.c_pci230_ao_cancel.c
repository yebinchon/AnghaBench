
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int pci230_ao_stop (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int pci230_ao_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 pci230_ao_stop(dev, s);
 return 0;
}
