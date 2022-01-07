
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int (* write_reg ) (struct device*,int ,int ,int) ;} ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ade7854_state* iio_priv (struct iio_dev*) ;
 int kstrtou32 (char const*,int,int *) ;
 int stub1 (struct device*,int ,int ,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ade7854_write_24bit(struct device *dev,
       struct device_attribute *attr,
       const char *buf,
       size_t len)
{
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ade7854_state *st = iio_priv(indio_dev);

 int ret;
 u32 val;

 ret = kstrtou32(buf, 10, &val);
 if (ret)
  goto error_ret;
 ret = st->write_reg(dev, this_attr->address, val, 24);

error_ret:
 return ret ? ret : len;
}
