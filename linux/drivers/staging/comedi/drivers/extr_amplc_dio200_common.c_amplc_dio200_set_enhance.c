
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int DIO200_ENHANCE ;
 int dio200_write8 (struct comedi_device*,int ,unsigned char) ;

void amplc_dio200_set_enhance(struct comedi_device *dev, unsigned char val)
{
 dio200_write8(dev, DIO200_ENHANCE, val);
}
