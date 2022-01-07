
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iio_dev {int dummy; } ;
struct ad7280_state {int scan_cnt; unsigned int cell_threshhigh; unsigned int cell_threshlow; unsigned int aux_threshhigh; unsigned int aux_threshlow; } ;
typedef int irqreturn_t ;


 unsigned int AD7280A_CELL_VOLTAGE_6 ;
 int GFP_KERNEL ;
 int IIO_EVENT_CODE (int ,int,int ,int ,int ,int ,int ,int ) ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_TEMP ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IIO_VOLTAGE ;
 int IRQ_HANDLED ;
 int ad7280_read_all_channels (struct ad7280_state*,int,unsigned int*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad7280_state* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 unsigned int* kcalloc (int,int,int ) ;
 int kfree (unsigned int*) ;

__attribute__((used)) static irqreturn_t ad7280_event_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct ad7280_state *st = iio_priv(indio_dev);
 unsigned int *channels;
 int i, ret;

 channels = kcalloc(st->scan_cnt, sizeof(*channels), GFP_KERNEL);
 if (!channels)
  return IRQ_HANDLED;

 ret = ad7280_read_all_channels(st, st->scan_cnt, channels);
 if (ret < 0)
  goto out;

 for (i = 0; i < st->scan_cnt; i++) {
  if (((channels[i] >> 23) & 0xF) <= AD7280A_CELL_VOLTAGE_6) {
   if (((channels[i] >> 11) & 0xFFF) >=
       st->cell_threshhigh) {
    u64 tmp = IIO_EVENT_CODE(IIO_VOLTAGE, 1, 0,
        IIO_EV_DIR_RISING,
        IIO_EV_TYPE_THRESH,
        0, 0, 0);
    iio_push_event(indio_dev, tmp,
            iio_get_time_ns(indio_dev));
   } else if (((channels[i] >> 11) & 0xFFF) <=
       st->cell_threshlow) {
    u64 tmp = IIO_EVENT_CODE(IIO_VOLTAGE, 1, 0,
        IIO_EV_DIR_FALLING,
        IIO_EV_TYPE_THRESH,
        0, 0, 0);
    iio_push_event(indio_dev, tmp,
            iio_get_time_ns(indio_dev));
   }
  } else {
   if (((channels[i] >> 11) & 0xFFF) >=
       st->aux_threshhigh) {
    u64 tmp = IIO_UNMOD_EVENT_CODE(IIO_TEMP, 0,
       IIO_EV_TYPE_THRESH,
       IIO_EV_DIR_RISING);
    iio_push_event(indio_dev, tmp,
            iio_get_time_ns(indio_dev));
   } else if (((channels[i] >> 11) & 0xFFF) <=
    st->aux_threshlow) {
    u64 tmp = IIO_UNMOD_EVENT_CODE(IIO_TEMP, 0,
       IIO_EV_TYPE_THRESH,
       IIO_EV_DIR_FALLING);
    iio_push_event(indio_dev, tmp,
            iio_get_time_ns(indio_dev));
   }
  }
 }

out:
 kfree(channels);

 return IRQ_HANDLED;
}
