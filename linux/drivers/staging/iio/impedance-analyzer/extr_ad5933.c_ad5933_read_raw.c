
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5933_state {int client; } ;
typedef int __be16 ;


 int AD5933_CTRL_MEASURE_TEMP ;
 int AD5933_REG_TEMP_DATA ;
 int AD5933_STAT_TEMP_VALID ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int ad5933_cmd (struct ad5933_state*,int ) ;
 int ad5933_i2c_read (int ,int ,int,int *) ;
 int ad5933_wait_busy (struct ad5933_state*,int ) ;
 int be16_to_cpu (int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad5933_state* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int ad5933_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad5933_state *st = iio_priv(indio_dev);
 __be16 dat;
 int ret;

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = ad5933_cmd(st, AD5933_CTRL_MEASURE_TEMP);
  if (ret < 0)
   goto out;
  ret = ad5933_wait_busy(st, AD5933_STAT_TEMP_VALID);
  if (ret < 0)
   goto out;

  ret = ad5933_i2c_read(st->client,
          AD5933_REG_TEMP_DATA,
          2, (u8 *)&dat);
  if (ret < 0)
   goto out;
  iio_device_release_direct_mode(indio_dev);
  *val = sign_extend32(be16_to_cpu(dat), 13);

  return IIO_VAL_INT;
 case 128:
  *val = 1000;
  *val2 = 5;
  return IIO_VAL_FRACTIONAL_LOG2;
 }

 return -EINVAL;
out:
 iio_device_release_direct_mode(indio_dev);
 return ret;
}
