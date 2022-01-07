
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7150_chip_info {int state_lock; void*** thresh_timeout; void*** mag_timeout; } ;
typedef int ssize_t ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EVENT_CODE_EXTRACT_CHAN (int ) ;
 int IIO_EVENT_CODE_EXTRACT_DIR (int ) ;
 int IIO_EVENT_CODE_EXTRACT_TYPE (int ) ;
 int IIO_EV_DIR_RISING ;


 int ad7150_write_event_params (struct iio_dev*,int,int,int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;
 int kstrtou8 (char const*,int,void**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7150_store_timeout(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int chan = IIO_EVENT_CODE_EXTRACT_CHAN(this_attr->address);
 enum iio_event_direction dir;
 enum iio_event_type type;
 int rising;
 u8 data;
 int ret;

 type = IIO_EVENT_CODE_EXTRACT_TYPE(this_attr->address);
 dir = IIO_EVENT_CODE_EXTRACT_DIR(this_attr->address);
 rising = (dir == IIO_EV_DIR_RISING);

 ret = kstrtou8(buf, 10, &data);
 if (ret < 0)
  return ret;

 mutex_lock(&chip->state_lock);
 switch (type) {
 case 129:
  chip->mag_timeout[rising][chan] = data;
  break;
 case 128:
  chip->thresh_timeout[rising][chan] = data;
  break;
 default:
  ret = -EINVAL;
  goto error_ret;
 }

 ret = ad7150_write_event_params(indio_dev, chan, type, dir);
error_ret:
 mutex_unlock(&chip->state_lock);

 if (ret < 0)
  return ret;

 return len;
}
