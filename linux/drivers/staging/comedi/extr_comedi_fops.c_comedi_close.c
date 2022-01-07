
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {struct file* lock; struct file* busy; } ;
struct comedi_file {struct comedi_device* dev; } ;
struct comedi_device {int n_subdevices; int use_count; int mutex; TYPE_1__* driver; int (* close ) (struct comedi_device*) ;scalar_t__ attached; struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int module; } ;


 int comedi_dev_put (struct comedi_device*) ;
 int do_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int kfree (struct comedi_file*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct comedi_device*) ;

__attribute__((used)) static int comedi_close(struct inode *inode, struct file *file)
{
 struct comedi_file *cfp = file->private_data;
 struct comedi_device *dev = cfp->dev;
 struct comedi_subdevice *s = ((void*)0);
 int i;

 mutex_lock(&dev->mutex);

 if (dev->subdevices) {
  for (i = 0; i < dev->n_subdevices; i++) {
   s = &dev->subdevices[i];

   if (s->busy == file)
    do_cancel(dev, s);
   if (s->lock == file)
    s->lock = ((void*)0);
  }
 }
 if (dev->attached && dev->use_count == 1) {
  if (dev->close)
   dev->close(dev);
  module_put(dev->driver->module);
 }

 dev->use_count--;

 mutex_unlock(&dev->mutex);
 comedi_dev_put(dev);
 kfree(cfp);

 return 0;
}
