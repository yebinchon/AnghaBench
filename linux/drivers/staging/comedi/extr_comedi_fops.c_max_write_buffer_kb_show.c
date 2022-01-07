
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int devt; } ;
struct comedi_subdevice {int subdev_flags; TYPE_1__* async; } ;
struct comedi_device {int mutex; } ;
typedef int ssize_t ;
struct TYPE_2__ {int max_bufsize; } ;


 int ENODEV ;
 unsigned int MINOR (int ) ;
 int PAGE_SIZE ;
 int SDF_CMD_WRITE ;
 struct comedi_device* comedi_dev_get_from_minor (unsigned int) ;
 int comedi_dev_put (struct comedi_device*) ;
 struct comedi_subdevice* comedi_write_subdevice (struct comedi_device*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t max_write_buffer_kb_show(struct device *csdev,
     struct device_attribute *attr,
     char *buf)
{
 unsigned int minor = MINOR(csdev->devt);
 struct comedi_device *dev;
 struct comedi_subdevice *s;
 unsigned int size = 0;

 dev = comedi_dev_get_from_minor(minor);
 if (!dev)
  return -ENODEV;

 mutex_lock(&dev->mutex);
 s = comedi_write_subdevice(dev, minor);
 if (s && (s->subdev_flags & SDF_CMD_WRITE) && s->async)
  size = s->async->max_bufsize / 1024;
 mutex_unlock(&dev->mutex);

 comedi_dev_put(dev);
 return snprintf(buf, PAGE_SIZE, "%u\n", size);
}
