
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7280_state {int* cb_mask; int lock; } ;
typedef int ssize_t ;


 int AD7280A_CELL_BALANCE ;
 int ad7280_write (struct ad7280_state*,unsigned int,int ,int ,int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7280_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7280_store_balance_sw(struct device *dev,
           struct device_attribute *attr,
           const char *buf,
           size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7280_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 bool readin;
 int ret;
 unsigned int devaddr, ch;

 ret = strtobool(buf, &readin);
 if (ret)
  return ret;

 devaddr = this_attr->address >> 8;
 ch = this_attr->address & 0xFF;

 mutex_lock(&st->lock);
 if (readin)
  st->cb_mask[devaddr] |= 1 << (ch + 2);
 else
  st->cb_mask[devaddr] &= ~(1 << (ch + 2));

 ret = ad7280_write(st, devaddr, AD7280A_CELL_BALANCE,
      0, st->cb_mask[devaddr]);
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
