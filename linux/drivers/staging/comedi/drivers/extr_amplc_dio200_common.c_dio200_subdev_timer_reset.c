
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int DIO200_TS_CONFIG ;
 unsigned int TS_CONFIG_CLK_SRC_MASK ;
 unsigned int TS_CONFIG_RESET ;
 unsigned int dio200_read32 (struct comedi_device*,int ) ;
 int dio200_write32 (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static void dio200_subdev_timer_reset(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 unsigned int clock;

 clock = dio200_read32(dev, DIO200_TS_CONFIG) & TS_CONFIG_CLK_SRC_MASK;
 dio200_write32(dev, DIO200_TS_CONFIG, clock | TS_CONFIG_RESET);
 dio200_write32(dev, DIO200_TS_CONFIG, clock);
}
