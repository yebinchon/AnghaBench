
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ad7150_chip_info {int** mag_sensitivity; int** thresh_sensitivity; int** threshold; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_DIR_RISING ;



 int IIO_VAL_INT ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7150_read_event_value(struct iio_dev *indio_dev,
       const struct iio_chan_spec *chan,
       enum iio_event_type type,
       enum iio_event_direction dir,
       enum iio_event_info info,
       int *val, int *val2)
{
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 int rising = (dir == IIO_EV_DIR_RISING);


 switch (type) {
 case 130:
  *val = chip->mag_sensitivity[rising][chan->channel];
  return IIO_VAL_INT;
 case 128:
  *val = chip->thresh_sensitivity[rising][chan->channel];
  return IIO_VAL_INT;
 case 129:
  *val = chip->threshold[rising][chan->channel];
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
