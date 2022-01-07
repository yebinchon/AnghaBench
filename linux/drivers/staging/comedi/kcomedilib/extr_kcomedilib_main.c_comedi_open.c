
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int attach_lock; scalar_t__ attached; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 struct comedi_device* comedi_dev_get_from_minor (unsigned int) ;
 int comedi_dev_put (struct comedi_device*) ;
 int down_read (int *) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int up_read (int *) ;

struct comedi_device *comedi_open(const char *filename)
{
 struct comedi_device *dev, *retval = ((void*)0);
 unsigned int minor;

 if (strncmp(filename, "/dev/comedi", 11) != 0)
  return ((void*)0);

 if (kstrtouint(filename + 11, 0, &minor))
  return ((void*)0);

 if (minor >= COMEDI_NUM_BOARD_MINORS)
  return ((void*)0);

 dev = comedi_dev_get_from_minor(minor);
 if (!dev)
  return ((void*)0);

 down_read(&dev->attach_lock);
 if (dev->attached)
  retval = dev;
 else
  retval = ((void*)0);
 up_read(&dev->attach_lock);

 if (!retval)
  comedi_dev_put(dev);

 return retval;
}
