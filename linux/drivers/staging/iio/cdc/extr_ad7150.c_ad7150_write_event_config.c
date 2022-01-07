
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; int type; } ;
struct ad7150_chip_info {scalar_t__ current_event; int state_lock; int client; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int AD7150_CFG ;
 int BIT (int) ;
 int EINVAL ;
 int IIO_EV_DIR_RISING ;



 scalar_t__ IIO_UNMOD_EVENT_CODE (int ,int ,int,int) ;
 int ad7150_write_event_params (struct iio_dev*,int ,int,int) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad7150_write_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir, int state)
{
 u8 thresh_type, cfg, adaptive;
 int ret;
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 int rising = (dir == IIO_EV_DIR_RISING);
 u64 event_code;


 if (!state)
  return -EINVAL;

 event_code = IIO_UNMOD_EVENT_CODE(chan->type, chan->channel, type, dir);
 if (event_code == chip->current_event)
  return 0;
 mutex_lock(&chip->state_lock);
 ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG);
 if (ret < 0)
  goto error_ret;

 cfg = ret & ~((0x03 << 5) | BIT(7));

 switch (type) {
 case 130:
  adaptive = 1;
  if (rising)
   thresh_type = 0x1;
  else
   thresh_type = 0x0;
  break;
 case 128:
  adaptive = 1;
  if (rising)
   thresh_type = 0x3;
  else
   thresh_type = 0x2;
  break;
 case 129:
  adaptive = 0;
  if (rising)
   thresh_type = 0x1;
  else
   thresh_type = 0x0;
  break;
 default:
  ret = -EINVAL;
  goto error_ret;
 }

 cfg |= (!adaptive << 7) | (thresh_type << 5);

 ret = i2c_smbus_write_byte_data(chip->client, AD7150_CFG, cfg);
 if (ret < 0)
  goto error_ret;

 chip->current_event = event_code;


 ret = ad7150_write_event_params(indio_dev, chan->channel, type, dir);
error_ret:
 mutex_unlock(&chip->state_lock);

 return ret;
}
