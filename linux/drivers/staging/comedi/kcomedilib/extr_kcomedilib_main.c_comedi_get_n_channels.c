
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {unsigned int n_subdevices; int attach_lock; TYPE_1__* subdevices; int attached; } ;
struct TYPE_2__ {int n_chan; } ;


 int down_read (int *) ;
 int up_read (int *) ;

int comedi_get_n_channels(struct comedi_device *dev, unsigned int subdevice)
{
 int n;

 down_read(&dev->attach_lock);
 if (!dev->attached || subdevice >= dev->n_subdevices)
  n = 0;
 else
  n = dev->subdevices[subdevice].n_chan;
 up_read(&dev->attach_lock);

 return n;
}
