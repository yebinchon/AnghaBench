
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dt9812_private {int mut; } ;
struct comedi_device {struct dt9812_private* private; } ;


 int F020_SFR_P2 ;
 int dt9812_write_multiple_registers (struct comedi_device*,int,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dt9812_digital_out(struct comedi_device *dev, u8 bits)
{
 struct dt9812_private *devpriv = dev->private;
 u8 reg[1] = { F020_SFR_P2 };
 u8 value[1] = { bits };
 int ret;

 mutex_lock(&devpriv->mut);
 ret = dt9812_write_multiple_registers(dev, 1, reg, value);
 mutex_unlock(&devpriv->mut);

 return ret;
}
