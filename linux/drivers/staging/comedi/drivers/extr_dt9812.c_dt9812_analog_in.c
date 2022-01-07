
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dt9812_rmw_byte {int address; int and_mask; int or_value; } ;
struct dt9812_private {int device; int mut; } ;
struct comedi_device {struct dt9812_private* private; } ;
typedef enum dt9812_gain { ____Placeholder_dt9812_gain } dt9812_gain ;




 int F020_MASK_ADC0CN_AD0BUSY ;
 int F020_MASK_ADC0CN_AD0EN ;
 int F020_MASK_ADC0CN_AD0INT ;
 int F020_SFR_ADC0CN ;
 int F020_SFR_ADC0H ;
 int F020_SFR_ADC0L ;
 int dt9812_configure_gain (struct comedi_device*,struct dt9812_rmw_byte*,int) ;
 int dt9812_configure_mux (struct comedi_device*,struct dt9812_rmw_byte*,int) ;
 int dt9812_read_multiple_registers (struct comedi_device*,int,int*,int*) ;
 int dt9812_rmw_multiple_registers (struct comedi_device*,int,struct dt9812_rmw_byte*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dt9812_analog_in(struct comedi_device *dev,
       int channel, u16 *value, enum dt9812_gain gain)
{
 struct dt9812_private *devpriv = dev->private;
 struct dt9812_rmw_byte rmw[3];
 u8 reg[3] = {
  F020_SFR_ADC0CN,
  F020_SFR_ADC0H,
  F020_SFR_ADC0L
 };
 u8 val[3];
 int ret;

 mutex_lock(&devpriv->mut);


 dt9812_configure_gain(dev, &rmw[0], gain);


 dt9812_configure_mux(dev, &rmw[1], channel);


 rmw[2].address = F020_SFR_ADC0CN;
 rmw[2].and_mask = 0xff;
 rmw[2].or_value = F020_MASK_ADC0CN_AD0EN | F020_MASK_ADC0CN_AD0BUSY;

 ret = dt9812_rmw_multiple_registers(dev, 3, rmw);
 if (ret)
  goto exit;


 ret = dt9812_read_multiple_registers(dev, 3, reg, val);
 if (ret)
  goto exit;
 if ((val[0] & (F020_MASK_ADC0CN_AD0INT | F020_MASK_ADC0CN_AD0BUSY)) ==
     F020_MASK_ADC0CN_AD0INT) {
  switch (devpriv->device) {
  case 129:





   *value = ((val[1] << 8) | val[2]) + 0x800;
   break;
  case 128:
   *value = (val[1] << 8) | val[2];
   break;
  }
 }

exit:
 mutex_unlock(&devpriv->mut);

 return ret;
}
