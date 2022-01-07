
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7816_chip_info {size_t channel_id; int* oti_data; } ;
typedef int ssize_t ;


 int AD7816_BOUND_VALUE_BASE ;
 int AD7816_BOUND_VALUE_MIN ;
 size_t AD7816_CS_MAX ;
 int EINVAL ;
 int dev_err (struct device*,char*,size_t) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7816_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad7816_show_oti(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7816_chip_info *chip = iio_priv(indio_dev);
 int value;

 if (chip->channel_id > AD7816_CS_MAX) {
  dev_err(dev, "Invalid oti channel id %d.\n", chip->channel_id);
  return -EINVAL;
 } else if (chip->channel_id == 0) {
  value = AD7816_BOUND_VALUE_MIN +
   (chip->oti_data[chip->channel_id] -
   AD7816_BOUND_VALUE_BASE);
  return sprintf(buf, "%d\n", value);
 }
 return sprintf(buf, "%u\n", chip->oti_data[chip->channel_id]);
}
