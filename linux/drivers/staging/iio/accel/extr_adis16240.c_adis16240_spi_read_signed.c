
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adis {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;


 int ADIS16240_ERROR_ACTIVE ;
 int adis_check_status (struct adis*) ;
 int adis_read_reg_16 (struct adis*,int ,int *) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct adis* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t adis16240_spi_read_signed(struct device *dev,
      struct device_attribute *attr,
      char *buf,
      unsigned int bits)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct adis *st = iio_priv(indio_dev);
 int ret;
 s16 val = 0;
 unsigned int shift = 16 - bits;
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);

 ret = adis_read_reg_16(st,
          this_attr->address, (u16 *)&val);
 if (ret)
  return ret;

 if (val & ADIS16240_ERROR_ACTIVE)
  adis_check_status(st);

 val = (s16)(val << shift) >> shift;
 return sprintf(buf, "%d\n", val);
}
