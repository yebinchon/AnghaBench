
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; int mutex; } ;


 unsigned int COMEDI_NUM_BOARD_MINORS ;
 int SDF_CMD_READ ;
 struct comedi_subdevice* comedi_subdevice_from_minor (struct comedi_device const*,unsigned int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct comedi_subdevice *
comedi_read_subdevice(const struct comedi_device *dev, unsigned int minor)
{
 struct comedi_subdevice *s;

 lockdep_assert_held(&dev->mutex);
 if (minor >= COMEDI_NUM_BOARD_MINORS) {
  s = comedi_subdevice_from_minor(dev, minor);
  if (!s || (s->subdev_flags & SDF_CMD_READ))
   return s;
 }
 return dev->read_subdev;
}
