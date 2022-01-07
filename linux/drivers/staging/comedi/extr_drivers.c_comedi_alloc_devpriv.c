
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {void* private; } ;


 int GFP_KERNEL ;
 void* kzalloc (size_t,int ) ;

void *comedi_alloc_devpriv(struct comedi_device *dev, size_t size)
{
 dev->private = kzalloc(size, GFP_KERNEL);
 return dev->private;
}
