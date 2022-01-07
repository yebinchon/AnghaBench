
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7280_state {int lock; } ;
typedef int ssize_t ;


 int ad7280_read (struct ad7280_state*,int,int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7280_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,unsigned int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7280_show_balance_timer(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7280_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int ret;
 unsigned int msecs;

 mutex_lock(&st->lock);
 ret = ad7280_read(st, this_attr->address >> 8,
     this_attr->address & 0xFF);
 mutex_unlock(&st->lock);

 if (ret < 0)
  return ret;

 msecs = (ret >> 3) * 71500;

 return sprintf(buf, "%u\n", msecs);
}
