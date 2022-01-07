
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; int channel; size_t differential; int type; } ;
struct TYPE_2__ {int d32; int * d8; } ;
struct ad7746_chip_info {int config; int lock; int ** capdac; int client; TYPE_1__ data; } ;


 int AD7746_CAPDAC_DACP (int ) ;
 int AD7746_CONF_CAPFS_MASK ;
 int AD7746_CONF_CAPFS_SHIFT ;
 int AD7746_CONF_MODE_SINGLE_CONV ;
 int AD7746_CONF_VTFS_MASK ;
 int AD7746_CONF_VTFS_SHIFT ;
 int AD7746_REG_CAP_GAINH ;
 int AD7746_REG_CAP_OFFH ;
 int AD7746_REG_CFG ;
 int AD7746_REG_VOLT_GAINH ;
 int EINVAL ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;

 int** ad7746_cap_filter_rate_table ;
 int ad7746_select_channel (struct iio_dev*,struct iio_chan_spec const*) ;
 int** ad7746_vt_filter_rate_table ;
 int be32_to_cpu (int ) ;
 int i2c_smbus_read_i2c_block_data (int ,int,int,int *) ;
 int i2c_smbus_read_word_swapped (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct ad7746_chip_info* iio_priv (struct iio_dev*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad7746_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2,
      long mask)
{
 struct ad7746_chip_info *chip = iio_priv(indio_dev);
 int ret, delay, idx;
 u8 regval, reg;

 mutex_lock(&chip->lock);

 switch (mask) {
 case 132:
 case 133:
  ret = ad7746_select_channel(indio_dev, chan);
  if (ret < 0)
   goto out;
  delay = ret;

  regval = chip->config | AD7746_CONF_MODE_SINGLE_CONV;
  ret = i2c_smbus_write_byte_data(chip->client, AD7746_REG_CFG,
      regval);
  if (ret < 0)
   goto out;

  msleep(delay);


  ret = i2c_smbus_read_i2c_block_data(chip->client,
          chan->address >> 8, 3,
          &chip->data.d8[1]);

  if (ret < 0)
   goto out;

  *val = (be32_to_cpu(chip->data.d32) & 0xFFFFFF) - 0x800000;

  switch (chan->type) {
  case 129:




   *val = (*val * 125) / 256;
   break;
  case 128:
   if (chan->channel == 1)
    *val = *val * 6;
   break;
  default:
   break;
  }

  ret = IIO_VAL_INT;
  break;
 case 135:
  switch (chan->type) {
  case 137:
   reg = AD7746_REG_CAP_GAINH;
   break;
  case 128:
   reg = AD7746_REG_VOLT_GAINH;
   break;
  default:
   ret = -EINVAL;
   goto out;
  }

  ret = i2c_smbus_read_word_swapped(chip->client, reg);
  if (ret < 0)
   goto out;

  *val = 1;
  *val2 = (15625 * ret) / 1024;

  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 case 136:
  ret = i2c_smbus_read_word_swapped(chip->client,
        AD7746_REG_CAP_OFFH);
  if (ret < 0)
   goto out;
  *val = ret;

  ret = IIO_VAL_INT;
  break;
 case 134:
  *val = AD7746_CAPDAC_DACP(chip->capdac[chan->channel]
       [chan->differential]) * 338646;

  ret = IIO_VAL_INT;
  break;
 case 130:
  switch (chan->type) {
  case 137:

   *val = 0;
   *val2 = 488;
   ret = IIO_VAL_INT_PLUS_NANO;
   break;
  case 128:

   *val = 1170;
   *val2 = 23;
   ret = IIO_VAL_FRACTIONAL_LOG2;
   break;
  default:
   ret = -EINVAL;
   break;
  }

  break;
 case 131:
  switch (chan->type) {
  case 137:
   idx = (chip->config & AD7746_CONF_CAPFS_MASK) >>
    AD7746_CONF_CAPFS_SHIFT;
   *val = ad7746_cap_filter_rate_table[idx][0];
   ret = IIO_VAL_INT;
   break;
  case 128:
   idx = (chip->config & AD7746_CONF_VTFS_MASK) >>
    AD7746_CONF_VTFS_SHIFT;
   *val = ad7746_vt_filter_rate_table[idx][0];
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
  }
  break;
 default:
  ret = -EINVAL;
 }
out:
 mutex_unlock(&chip->lock);
 return ret;
}
