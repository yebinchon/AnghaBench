
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subdev_8255_private {unsigned long regbase; } ;
struct comedi_subdevice {struct subdev_8255_private* private; } ;



unsigned long subdev_8255_regbase(struct comedi_subdevice *s)
{
 struct subdev_8255_private *spriv = s->private;

 return spriv->regbase;
}
