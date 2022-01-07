
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7150_chip_info {int** mag_timeout; int** thresh_timeout; } ;
typedef int ssize_t ;


 int EINVAL ;
 int IIO_EVENT_CODE_EXTRACT_CHAN (int ) ;
 scalar_t__ IIO_EVENT_CODE_EXTRACT_DIR (int ) ;
 int IIO_EVENT_CODE_EXTRACT_TYPE (int ) ;
 scalar_t__ IIO_EV_DIR_RISING ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7150_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7150_show_timeout(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7150_chip_info *chip = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 u8 value;


 int chan = IIO_EVENT_CODE_EXTRACT_CHAN(this_attr->address);
 int rising = (IIO_EVENT_CODE_EXTRACT_DIR(this_attr->address)
        == IIO_EV_DIR_RISING) ? 1 : 0;

 switch (IIO_EVENT_CODE_EXTRACT_TYPE(this_attr->address)) {
 case 129:
  value = chip->mag_timeout[rising][chan];
  break;
 case 128:
  value = chip->thresh_timeout[rising][chan];
  break;
 default:
  return -EINVAL;
 }

 return sprintf(buf, "%d\n", value);
}
