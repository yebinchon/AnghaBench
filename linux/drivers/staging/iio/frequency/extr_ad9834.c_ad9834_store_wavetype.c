
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9834_state {scalar_t__ devid; int control; int lock; int msg; int spi; int data; } ;
typedef int ssize_t ;


 int AD9834_MODE ;
 int AD9834_OPBITEN ;
 int AD9834_REG_CMD ;
 int EINVAL ;
 scalar_t__ ID_AD9833 ;
 scalar_t__ ID_AD9837 ;
 int cpu_to_be16 (int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad9834_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;
 int sysfs_streq (char const*,char*) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad9834_store_wavetype(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad9834_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int ret = 0;
 bool is_ad9833_7 = (st->devid == ID_AD9833) || (st->devid == ID_AD9837);

 mutex_lock(&st->lock);

 switch ((u32)this_attr->address) {
 case 0:
  if (sysfs_streq(buf, "sine")) {
   st->control &= ~AD9834_MODE;
   if (is_ad9833_7)
    st->control &= ~AD9834_OPBITEN;
  } else if (sysfs_streq(buf, "triangle")) {
   if (is_ad9833_7) {
    st->control &= ~AD9834_OPBITEN;
    st->control |= AD9834_MODE;
   } else if (st->control & AD9834_OPBITEN) {
    ret = -EINVAL;
   } else {
    st->control |= AD9834_MODE;
   }
  } else if (is_ad9833_7 && sysfs_streq(buf, "square")) {
   st->control &= ~AD9834_MODE;
   st->control |= AD9834_OPBITEN;
  } else {
   ret = -EINVAL;
  }

  break;
 case 1:
  if (sysfs_streq(buf, "square") &&
      !(st->control & AD9834_MODE)) {
   st->control &= ~AD9834_MODE;
   st->control |= AD9834_OPBITEN;
  } else {
   ret = -EINVAL;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (!ret) {
  st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
  ret = spi_sync(st->spi, &st->msg);
 }
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
