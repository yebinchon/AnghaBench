
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_8255 {scalar_t__ ofs; } ;
struct comedi_subdevice {int io_bits; struct dio200_subdev_8255* private; } ;
struct comedi_device {int dummy; } ;


 int I8255_CTRL_A_IO ;
 int I8255_CTRL_B_IO ;
 int I8255_CTRL_CW ;
 int I8255_CTRL_C_HI_IO ;
 int I8255_CTRL_C_LO_IO ;
 scalar_t__ I8255_CTRL_REG ;
 int dio200_write8 (struct comedi_device*,scalar_t__,int) ;

__attribute__((used)) static void dio200_subdev_8255_set_dir(struct comedi_device *dev,
           struct comedi_subdevice *s)
{
 struct dio200_subdev_8255 *subpriv = s->private;
 int config;

 config = I8255_CTRL_CW;

 if (!(s->io_bits & 0x0000ff))
  config |= I8255_CTRL_A_IO;
 if (!(s->io_bits & 0x00ff00))
  config |= I8255_CTRL_B_IO;
 if (!(s->io_bits & 0x0f0000))
  config |= I8255_CTRL_C_LO_IO;
 if (!(s->io_bits & 0xf00000))
  config |= I8255_CTRL_C_HI_IO;
 dio200_write8(dev, subpriv->ofs + I8255_CTRL_REG, config);
}
