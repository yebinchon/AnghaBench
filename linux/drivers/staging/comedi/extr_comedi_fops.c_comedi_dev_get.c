
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct comedi_device *comedi_dev_get(struct comedi_device *dev)
{
 if (dev)
  kref_get(&dev->refcount);
 return dev;
}
