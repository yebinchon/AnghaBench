
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int devt; } ;
struct comedi_subdevice {int subdev_flags; scalar_t__ async; } ;
struct comedi_device {int mutex; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 unsigned int MINOR (int ) ;
 int SDF_CMD_READ ;
 int UINT_MAX ;
 struct comedi_device* comedi_dev_get_from_minor (unsigned int) ;
 int comedi_dev_put (struct comedi_device*) ;
 struct comedi_subdevice* comedi_read_subdevice (struct comedi_device*,unsigned int) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int resize_async_buffer (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static ssize_t read_buffer_kb_store(struct device *csdev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 unsigned int minor = MINOR(csdev->devt);
 struct comedi_device *dev;
 struct comedi_subdevice *s;
 unsigned int size;
 int err;

 err = kstrtouint(buf, 10, &size);
 if (err)
  return err;
 if (size > (UINT_MAX / 1024))
  return -EINVAL;
 size *= 1024;

 dev = comedi_dev_get_from_minor(minor);
 if (!dev)
  return -ENODEV;

 mutex_lock(&dev->mutex);
 s = comedi_read_subdevice(dev, minor);
 if (s && (s->subdev_flags & SDF_CMD_READ) && s->async)
  err = resize_async_buffer(dev, s, size);
 else
  err = -EINVAL;
 mutex_unlock(&dev->mutex);

 comedi_dev_put(dev);
 return err ? err : count;
}
