
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct iio_dev {int dummy; } ;
struct ad7150_chip_info {scalar_t__ current_event; int client; int ** thresh_timeout; int ** thresh_sensitivity; int ** mag_timeout; int ** mag_sensitivity; int ** threshold; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_CAPACITANCE ;
 int IIO_EV_DIR_RISING ;



 scalar_t__ IIO_UNMOD_EVENT_CODE (int ,unsigned int,int,int) ;
 int ** ad7150_addresses ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int i2c_smbus_write_word_data (int ,int ,int ) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;
 int swab16 (int ) ;

__attribute__((used)) static int ad7150_write_event_params(struct iio_dev *indio_dev,
         unsigned int chan,
         enum iio_event_type type,
         enum iio_event_direction dir)
{
 int ret;
 u16 value;
 u8 sens, timeout;
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 int rising = (dir == IIO_EV_DIR_RISING);
 u64 event_code;

 event_code = IIO_UNMOD_EVENT_CODE(IIO_CAPACITANCE, chan, type, dir);

 if (event_code != chip->current_event)
  return 0;

 switch (type) {

 case 129:
  value = chip->threshold[rising][chan];
  return i2c_smbus_write_word_data(chip->client,
       ad7150_addresses[chan][3],
       swab16(value));
 case 130:
  sens = chip->mag_sensitivity[rising][chan];
  timeout = chip->mag_timeout[rising][chan];
  break;
 case 128:
  sens = chip->thresh_sensitivity[rising][chan];
  timeout = chip->thresh_timeout[rising][chan];
  break;
 default:
  return -EINVAL;
 }
 ret = i2c_smbus_write_byte_data(chip->client,
     ad7150_addresses[chan][4],
     sens);
 if (ret)
  return ret;
 return i2c_smbus_write_byte_data(chip->client,
     ad7150_addresses[chan][5],
     timeout);
}
