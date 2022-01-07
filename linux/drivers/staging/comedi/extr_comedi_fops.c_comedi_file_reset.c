
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {int subdev_flags; } ;
struct comedi_file {int write_subdev; int read_subdev; int last_detach_count; int last_attached; struct comedi_device* dev; } ;
struct comedi_device {int detach_count; int attached; struct comedi_subdevice* write_subdev; struct comedi_subdevice* read_subdev; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 int SDF_CMD_READ ;
 int SDF_CMD_WRITE ;
 int WRITE_ONCE (int ,struct comedi_subdevice*) ;
 struct comedi_subdevice* comedi_subdevice_from_minor (struct comedi_device*,unsigned int) ;
 int file_inode (struct file*) ;
 unsigned int iminor (int ) ;

__attribute__((used)) static void comedi_file_reset(struct file *file)
{
 struct comedi_file *cfp = file->private_data;
 struct comedi_device *dev = cfp->dev;
 struct comedi_subdevice *s, *read_s, *write_s;
 unsigned int minor = iminor(file_inode(file));

 read_s = dev->read_subdev;
 write_s = dev->write_subdev;
 if (minor >= COMEDI_NUM_BOARD_MINORS) {
  s = comedi_subdevice_from_minor(dev, minor);
  if (!s || s->subdev_flags & SDF_CMD_READ)
   read_s = s;
  if (!s || s->subdev_flags & SDF_CMD_WRITE)
   write_s = s;
 }
 cfp->last_attached = dev->attached;
 cfp->last_detach_count = dev->detach_count;
 WRITE_ONCE(cfp->read_subdev, read_s);
 WRITE_ONCE(cfp->write_subdev, write_s);
}
