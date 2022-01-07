
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct ad2s1210_state {int* rx; int resolution; int lock; int * gpios; int hysteresis; int sdev; } ;
typedef int s16 ;
typedef int __be16 ;


 size_t AD2S1210_SAMPLE ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int MOD_POS ;
 int MOD_VEL ;
 int ad2s1210_set_mode (int ,struct ad2s1210_state*) ;
 int be16_to_cpup (int *) ;
 int gpiod_set_value (int ,int) ;
 struct ad2s1210_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_read (int ,int*,int) ;
 int udelay (int) ;

__attribute__((used)) static int ad2s1210_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        int *val2,
        long m)
{
 struct ad2s1210_state *st = iio_priv(indio_dev);
 u16 negative;
 int ret = 0;
 u16 pos;
 s16 vel;

 mutex_lock(&st->lock);
 gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);

 udelay(1);

 switch (chan->type) {
 case 129:
  ad2s1210_set_mode(MOD_POS, st);
  break;
 case 128:
  ad2s1210_set_mode(MOD_VEL, st);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 if (ret < 0)
  goto error_ret;
 ret = spi_read(st->sdev, st->rx, 2);
 if (ret < 0)
  goto error_ret;

 switch (chan->type) {
 case 129:
  pos = be16_to_cpup((__be16 *)st->rx);
  if (st->hysteresis)
   pos >>= 16 - st->resolution;
  *val = pos;
  ret = IIO_VAL_INT;
  break;
 case 128:
  negative = st->rx[0] & 0x80;
  vel = be16_to_cpup((__be16 *)st->rx);
  vel >>= 16 - st->resolution;
  if (vel & 0x8000) {
   negative = (0xffff >> st->resolution) << st->resolution;
   vel |= negative;
  }
  *val = vel;
  ret = IIO_VAL_INT;
  break;
 default:
  mutex_unlock(&st->lock);
  return -EINVAL;
 }

error_ret:
 gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 1);

 udelay(1);
 mutex_unlock(&st->lock);
 return ret;
}
