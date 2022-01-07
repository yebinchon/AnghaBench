
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int refcount; } ;


 int comedi_dev_kref_release ;
 int kref_put (int *,int ) ;

int comedi_dev_put(struct comedi_device *dev)
{
 if (dev)
  return kref_put(&dev->refcount, comedi_dev_kref_release);
 return 1;
}
