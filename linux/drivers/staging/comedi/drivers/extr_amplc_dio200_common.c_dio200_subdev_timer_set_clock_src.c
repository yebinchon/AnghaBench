
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int DIO200_TS_CONFIG ;
 int EINVAL ;
 unsigned int TS_CONFIG_MAX_CLK_SRC ;
 int dio200_write32 (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static int dio200_subdev_timer_set_clock_src(struct comedi_device *dev,
          struct comedi_subdevice *s,
          unsigned int src)
{
 if (src > TS_CONFIG_MAX_CLK_SRC)
  return -EINVAL;
 dio200_write32(dev, DIO200_TS_CONFIG, src);
 return 0;
}
