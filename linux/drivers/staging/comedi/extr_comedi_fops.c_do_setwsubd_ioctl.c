
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {int subdev_flags; TYPE_2__* async; struct file* busy; } ;
struct comedi_file {int write_subdev; } ;
struct comedi_device {unsigned long n_subdevices; struct comedi_subdevice* subdevices; int mutex; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int CMDF_WRITE ;
 int EBUSY ;
 int EINVAL ;
 int SDF_CMD_WRITE ;
 int WRITE_ONCE (int ,struct comedi_subdevice*) ;
 struct comedi_subdevice* comedi_file_write_subdevice (struct file*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int do_setwsubd_ioctl(struct comedi_device *dev, unsigned long arg,
        struct file *file)
{
 struct comedi_file *cfp = file->private_data;
 struct comedi_subdevice *s_old, *s_new;

 lockdep_assert_held(&dev->mutex);
 if (arg >= dev->n_subdevices)
  return -EINVAL;

 s_new = &dev->subdevices[arg];
 s_old = comedi_file_write_subdevice(file);
 if (s_old == s_new)
  return 0;

 if (!(s_new->subdev_flags & SDF_CMD_WRITE))
  return -EINVAL;





 if (s_old && s_old->busy == file && s_old->async &&
     (s_old->async->cmd.flags & CMDF_WRITE))
  return -EBUSY;

 WRITE_ONCE(cfp->write_subdev, s_new);
 return 0;
}
