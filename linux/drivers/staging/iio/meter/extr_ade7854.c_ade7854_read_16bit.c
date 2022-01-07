
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int (* read_reg ) (struct device*,int ,int*,int) ;} ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct device*,int ,int*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ade7854_read_16bit(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int ret;
 u32 val = 0;
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ade7854_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);

 ret = st->read_reg(dev, this_attr->address, &val, 16);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%u\n", val);
}
