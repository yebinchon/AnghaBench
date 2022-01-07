
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7280_state {long cell_threshhigh; long cell_threshlow; long aux_threshhigh; long aux_threshlow; int lock; } ;
typedef int ssize_t ;






 int AD7280A_DEVADDR_MASTER ;
 int EFAULT ;
 int ad7280_write (struct ad7280_state*,int ,int,int,long) ;
 long clamp (long,long,int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7280_state* iio_priv (struct iio_dev*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7280_write_channel_config(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7280_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);

 long val;
 int ret;

 ret = kstrtol(buf, 10, &val);
 if (ret)
  return ret;

 switch (this_attr->address) {
 case 129:
 case 128:
  val = ((val - 1000) * 100) / 1568;
  break;
 case 131:
 case 130:
  val = (val * 10) / 196;
  break;
 default:
  return -EFAULT;
 }

 val = clamp(val, 0L, 0xFFL);

 mutex_lock(&st->lock);
 switch (this_attr->address) {
 case 129:
  st->cell_threshhigh = val;
  break;
 case 128:
  st->cell_threshlow = val;
  break;
 case 131:
  st->aux_threshhigh = val;
  break;
 case 130:
  st->aux_threshlow = val;
  break;
 }

 ret = ad7280_write(st, AD7280A_DEVADDR_MASTER,
      this_attr->address, 1, val);

 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
