
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;

 int IIO_VAL_INT ;
 int toshiba_iio_accel_get_axis (int ) ;

__attribute__((used)) static int toshiba_iio_accel_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int *val, int *val2, long mask)
{
 int ret;

 switch (mask) {
 case 128:
  ret = toshiba_iio_accel_get_axis(chan->channel);
  if (ret == -EIO || ret == -ENODEV)
   return ret;

  *val = ret;

  return IIO_VAL_INT;
 }

 return -EINVAL;
}
