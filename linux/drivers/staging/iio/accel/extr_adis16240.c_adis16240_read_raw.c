
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; int channel; int type; } ;
struct adis {int dummy; } ;
typedef int s16 ;


 int ADIS16240_ERROR_ACTIVE ;
 int EINVAL ;







 int IIO_G_TO_M_S_2 (int) ;

 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;

 int ** adis16240_addresses ;
 int adis_read_reg_16 (struct adis*,int ,int *) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int adis16240_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2,
         long mask)
{
 struct adis *st = iio_priv(indio_dev);
 int ret;
 u8 addr;
 s16 val16;

 switch (mask) {
 case 131:
  return adis_single_conversion(indio_dev, chan,
    ADIS16240_ERROR_ACTIVE, val);
 case 130:
  switch (chan->type) {
  case 128:
   if (chan->channel == 0) {
    *val = 4;
    *val2 = 880000;
    return IIO_VAL_INT_PLUS_MICRO;
   }
   return -EINVAL;
  case 129:
   *val = 244;
   *val2 = 0;
   return IIO_VAL_INT_PLUS_MICRO;
  case 136:
   *val = 0;
   *val2 = IIO_G_TO_M_S_2(51400);
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
  break;
 case 132:
  *val = 0;
  *val2 = IIO_G_TO_M_S_2(51400);
  return IIO_VAL_INT_PLUS_MICRO;
 case 134:
  *val = 25000 / 244 - 0x133;
  return IIO_VAL_INT;
 case 135:
  addr = adis16240_addresses[chan->scan_index][0];
  ret = adis_read_reg_16(st, addr, &val16);
  if (ret)
   return ret;
  *val = sign_extend32(val16, 9);
  return IIO_VAL_INT;
 case 133:
  addr = adis16240_addresses[chan->scan_index][1];
  ret = adis_read_reg_16(st, addr, &val16);
  if (ret)
   return ret;
  *val = sign_extend32(val16, 9);
  return IIO_VAL_INT;
 }
 return -EINVAL;
}
