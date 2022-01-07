
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subdev_8255_private {unsigned long regbase; int (* io ) (struct comedi_device*,int,int ,int,unsigned long) ;} ;
struct comedi_subdevice {int io_bits; struct subdev_8255_private* private; } ;
struct comedi_device {int dummy; } ;


 int I8255_CTRL_A_IO ;
 int I8255_CTRL_B_IO ;
 int I8255_CTRL_CW ;
 int I8255_CTRL_C_HI_IO ;
 int I8255_CTRL_C_LO_IO ;
 int I8255_CTRL_REG ;
 int stub1 (struct comedi_device*,int,int ,int,unsigned long) ;

__attribute__((used)) static void subdev_8255_do_config(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct subdev_8255_private *spriv = s->private;
 unsigned long regbase = spriv->regbase;
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

 spriv->io(dev, 1, I8255_CTRL_REG, config, regbase);
}
