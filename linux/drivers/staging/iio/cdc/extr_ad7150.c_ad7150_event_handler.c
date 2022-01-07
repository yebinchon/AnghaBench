
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct ad7150_chip_info {int old_state; int client; } ;
typedef int s64 ;
typedef int irqreturn_t ;


 int AD7150_STATUS ;
 int AD7150_STATUS_OUT1 ;
 int AD7150_STATUS_OUT2 ;
 int IIO_CAPACITANCE ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_UNMOD_EVENT_CODE (int ,int,int ,int ) ;
 int IRQ_HANDLED ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t ad7150_event_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 u8 int_status;
 s64 timestamp = iio_get_time_ns(indio_dev);
 int ret;

 ret = i2c_smbus_read_byte_data(chip->client, AD7150_STATUS);
 if (ret < 0)
  return IRQ_HANDLED;

 int_status = ret;

 if ((int_status & AD7150_STATUS_OUT1) &&
     !(chip->old_state & AD7150_STATUS_OUT1))
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_CAPACITANCE,
          0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_RISING),
    timestamp);
 else if ((!(int_status & AD7150_STATUS_OUT1)) &&
   (chip->old_state & AD7150_STATUS_OUT1))
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_CAPACITANCE,
          0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_FALLING),
          timestamp);

 if ((int_status & AD7150_STATUS_OUT2) &&
     !(chip->old_state & AD7150_STATUS_OUT2))
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_CAPACITANCE,
          1,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_RISING),
          timestamp);
 else if ((!(int_status & AD7150_STATUS_OUT2)) &&
   (chip->old_state & AD7150_STATUS_OUT2))
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_CAPACITANCE,
          1,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_FALLING),
          timestamp);

 chip->old_state = int_status;

 return IRQ_HANDLED;
}
