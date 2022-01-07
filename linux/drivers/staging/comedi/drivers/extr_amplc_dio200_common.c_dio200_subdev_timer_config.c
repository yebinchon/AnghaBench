
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;



 int dio200_subdev_timer_get_clock_src (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int*) ;
 int dio200_subdev_timer_reset (struct comedi_device*,struct comedi_subdevice*) ;
 int dio200_subdev_timer_set_clock_src (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static int dio200_subdev_timer_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 int ret = 0;

 switch (data[0]) {
 case 129:
  dio200_subdev_timer_reset(dev, s);
  break;
 case 128:
  ret = dio200_subdev_timer_set_clock_src(dev, s, data[1]);
  if (ret < 0)
   ret = -EINVAL;
  break;
 case 130:
  dio200_subdev_timer_get_clock_src(dev, s, &data[1], &data[2]);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret < 0 ? ret : insn->n;
}
