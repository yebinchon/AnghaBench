
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct ad7150_chip_info {int client; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int ** ad7150_addresses ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;
 int swab16 (int) ;

__attribute__((used)) static int ad7150_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long mask)
{
 int ret;
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 int channel = chan->channel;

 switch (mask) {
 case 128:
  ret = i2c_smbus_read_word_data(chip->client,
            ad7150_addresses[channel][0]);
  if (ret < 0)
   return ret;
  *val = swab16(ret);
  return IIO_VAL_INT;
 case 129:
  ret = i2c_smbus_read_word_data(chip->client,
            ad7150_addresses[channel][1]);
  if (ret < 0)
   return ret;
  *val = swab16(ret);
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
