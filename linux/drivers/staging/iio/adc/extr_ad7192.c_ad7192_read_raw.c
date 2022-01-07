
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {int const type; TYPE_1__ scan_type; } ;
struct ad7192_state {int conf; int** scale_avail; int fclk; int f_order; int mode; int lock; } ;


 size_t AD7192_CONF_GAIN (int) ;
 int AD7192_CONF_UNIPOLAR ;
 int AD7192_MODE_RATE (int ) ;
 int EINVAL ;






 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;

 int ad7192_get_3db_filter_freq (struct ad7192_state*) ;
 int ad7192_get_temp_scale (int) ;
 int ad_sigma_delta_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 struct ad7192_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad7192_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct ad7192_state *st = iio_priv(indio_dev);
 bool unipolar = !!(st->conf & AD7192_CONF_UNIPOLAR);

 switch (m) {
 case 132:
  return ad_sigma_delta_single_conversion(indio_dev, chan, val);
 case 130:
  switch (chan->type) {
  case 128:
   mutex_lock(&st->lock);
   *val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
   *val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
   mutex_unlock(&st->lock);
   return IIO_VAL_INT_PLUS_NANO;
  case 129:
   *val = 0;
   *val2 = 1000000000 / ad7192_get_temp_scale(unipolar);
   return IIO_VAL_INT_PLUS_NANO;
  default:
   return -EINVAL;
  }
 case 133:
  if (!unipolar)
   *val = -(1 << (chan->scan_type.realbits - 1));
  else
   *val = 0;

  if (chan->type == 129)
   *val -= 273 * ad7192_get_temp_scale(unipolar);
  return IIO_VAL_INT;
 case 131:
  *val = st->fclk /
   (st->f_order * 1024 * AD7192_MODE_RATE(st->mode));
  return IIO_VAL_INT;
 case 134:
  *val = ad7192_get_3db_filter_freq(st);
  *val2 = 1000;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
