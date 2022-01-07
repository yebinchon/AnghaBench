
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dt9812_private {int mut; } ;
struct comedi_device {struct dt9812_private* private; } ;


 int F020_SFR_P1 ;
 int F020_SFR_P3 ;
 int dt9812_read_multiple_registers (struct comedi_device*,int,int*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
{
 struct dt9812_private *devpriv = dev->private;
 u8 reg[2] = { F020_SFR_P3, F020_SFR_P1 };
 u8 value[2];
 int ret;

 mutex_lock(&devpriv->mut);
 ret = dt9812_read_multiple_registers(dev, 2, reg, value);
 if (ret == 0) {





  *bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);
 }
 mutex_unlock(&devpriv->mut);

 return ret;
}
