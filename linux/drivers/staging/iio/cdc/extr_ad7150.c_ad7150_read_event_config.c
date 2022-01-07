
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad7150_chip_info {int client; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int AD7150_CFG ;
 int AD7150_CFG_FIX ;
 int AD7150_THRESHTYPE_MSK ;
 int EINVAL ;
 int FIELD_GET (int ,int) ;
 int IIO_EV_DIR_RISING ;



 int i2c_smbus_read_byte_data (int ,int ) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7150_read_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir)
{
 int ret;
 u8 threshtype;
 bool thrfixed;
 struct ad7150_chip_info *chip = iio_priv(indio_dev);

 ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG);
 if (ret < 0)
  return ret;

 threshtype = FIELD_GET(AD7150_THRESHTYPE_MSK, ret);


 thrfixed = FIELD_GET(AD7150_CFG_FIX, ret);

 switch (type) {
 case 130:
  if (dir == IIO_EV_DIR_RISING)
   return !thrfixed && (threshtype == 0x1);
  return !thrfixed && (threshtype == 0x0);
 case 128:
  if (dir == IIO_EV_DIR_RISING)
   return !thrfixed && (threshtype == 0x3);
  return !thrfixed && (threshtype == 0x2);
 case 129:
  if (dir == IIO_EV_DIR_RISING)
   return thrfixed && (threshtype == 0x1);
  return thrfixed && (threshtype == 0x0);
 default:
  break;
 }
 return -EINVAL;
}
