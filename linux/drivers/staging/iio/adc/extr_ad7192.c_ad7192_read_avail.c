
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad7192_state {scalar_t__ scale_avail; } ;


 int ARRAY_SIZE (scalar_t__) ;
 int EINVAL ;
 int IIO_AVAIL_LIST ;

 int IIO_VAL_INT_PLUS_NANO ;
 struct ad7192_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7192_read_avail(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        const int **vals, int *type, int *length,
        long mask)
{
 struct ad7192_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  *vals = (int *)st->scale_avail;
  *type = IIO_VAL_INT_PLUS_NANO;

  *length = ARRAY_SIZE(st->scale_avail) * 2;

  return IIO_AVAIL_LIST;
 }

 return -EINVAL;
}
