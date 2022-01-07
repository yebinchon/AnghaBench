
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; size_t differential; int type; } ;
struct ad7746_chip_info {int** capdac; size_t capdac_set; int lock; int client; } ;


 int AD7746_CAPDAC_DACEN ;
 int AD7746_CAPDAC_DACP (int) ;
 int AD7746_REG_CAPDACA ;
 int AD7746_REG_CAPDACB ;
 int AD7746_REG_CAP_GAINH ;
 int AD7746_REG_CAP_OFFH ;
 int AD7746_REG_VOLT_GAINH ;
 int EINVAL ;






 int ad7746_store_cap_filter_rate_setup (struct ad7746_chip_info*,int) ;
 int ad7746_store_vt_filter_rate_setup (struct ad7746_chip_info*,int) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int i2c_smbus_write_word_swapped (int ,int,int) ;
 struct ad7746_chip_info* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad7746_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val,
       int val2,
       long mask)
{
 struct ad7746_chip_info *chip = iio_priv(indio_dev);
 int ret, reg;

 mutex_lock(&chip->lock);

 switch (mask) {
 case 131:
  if (val != 1) {
   ret = -EINVAL;
   goto out;
  }

  val = (val2 * 1024) / 15625;

  switch (chan->type) {
  case 133:
   reg = AD7746_REG_CAP_GAINH;
   break;
  case 128:
   reg = AD7746_REG_VOLT_GAINH;
   break;
  default:
   ret = -EINVAL;
   goto out;
  }

  ret = i2c_smbus_write_word_swapped(chip->client, reg, val);
  if (ret < 0)
   goto out;

  ret = 0;
  break;
 case 132:
  if (val < 0 || val > 0xFFFF) {
   ret = -EINVAL;
   goto out;
  }
  ret = i2c_smbus_write_word_swapped(chip->client,
         AD7746_REG_CAP_OFFH, val);
  if (ret < 0)
   goto out;

  ret = 0;
  break;
 case 130:
  if (val < 0 || val > 43008000) {
   ret = -EINVAL;
   goto out;
  }







  val /= 338646;

  chip->capdac[chan->channel][chan->differential] = val > 0 ?
   AD7746_CAPDAC_DACP(val) | AD7746_CAPDAC_DACEN : 0;

  ret = i2c_smbus_write_byte_data(chip->client,
      AD7746_REG_CAPDACA,
      chip->capdac[chan->channel][0]);
  if (ret < 0)
   goto out;
  ret = i2c_smbus_write_byte_data(chip->client,
      AD7746_REG_CAPDACB,
      chip->capdac[chan->channel][1]);
  if (ret < 0)
   goto out;

  chip->capdac_set = chan->channel;

  ret = 0;
  break;
 case 129:
  if (val2) {
   ret = -EINVAL;
   goto out;
  }

  switch (chan->type) {
  case 133:
   ret = ad7746_store_cap_filter_rate_setup(chip, val);
   break;
  case 128:
   ret = ad7746_store_vt_filter_rate_setup(chip, val);
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
