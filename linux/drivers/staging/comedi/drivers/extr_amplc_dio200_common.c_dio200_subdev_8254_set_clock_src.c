
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int DIO200_CLK_SCE (unsigned int) ;
 int clk_gat_sce (unsigned int,unsigned int,unsigned int) ;
 unsigned int dio200_subdev_8254_offset (struct comedi_device*,struct comedi_subdevice*) ;
 int dio200_write8 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void dio200_subdev_8254_set_clock_src(struct comedi_device *dev,
          struct comedi_subdevice *s,
          unsigned int chan,
          unsigned int src)
{
 unsigned int offset = dio200_subdev_8254_offset(dev, s);

 dio200_write8(dev, DIO200_CLK_SCE(offset >> 3),
        clk_gat_sce((offset >> 2) & 1, chan, src));
}
