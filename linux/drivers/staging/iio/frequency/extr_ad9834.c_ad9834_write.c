
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {int const address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9834_state {int control; int lock; int msg; int spi; void* data; } ;
typedef int ssize_t ;



 int AD9834_MODE ;



 int AD9834_REG_CMD ;





 int EINVAL ;
 int ENODEV ;
 int ad9834_write_frequency (struct ad9834_state*,int const,unsigned long) ;
 int ad9834_write_phase (struct ad9834_state*,int const,unsigned long) ;
 void* cpu_to_be16 (int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad9834_state* iio_priv (struct iio_dev*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync (int ,int *) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad9834_write(struct device *dev,
       struct device_attribute *attr,
       const char *buf,
       size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad9834_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int ret;
 unsigned long val;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 mutex_lock(&st->lock);
 switch ((u32)this_attr->address) {
 case 132:
 case 131:
  ret = ad9834_write_frequency(st, this_attr->address, val);
  break;
 case 130:
 case 129:
  ret = ad9834_write_phase(st, this_attr->address, val);
  break;
 case 135:
  if (st->control & AD9834_MODE) {
   ret = -EINVAL;
   break;
  }

  if (val)
   st->control |= 135;
  else
   st->control &= ~135;

  st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
  ret = spi_sync(st->spi, &st->msg);
  break;
 case 134:
  if (val)
   st->control |= 134;
  else
   st->control &= ~134;
  st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
  ret = spi_sync(st->spi, &st->msg);
  break;
 case 136:
 case 133:
  if (!val) {
   st->control &= ~(this_attr->address | 134);
  } else if (val == 1) {
   st->control |= this_attr->address;
   st->control &= ~134;
  } else {
   ret = -EINVAL;
   break;
  }
  st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
  ret = spi_sync(st->spi, &st->msg);
  break;
 case 128:
  if (val)
   st->control &= ~128;
  else
   st->control |= 128;

  st->data = cpu_to_be16(AD9834_REG_CMD | st->control);
  ret = spi_sync(st->spi, &st->msg);
  break;
 default:
  ret = -ENODEV;
 }
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
