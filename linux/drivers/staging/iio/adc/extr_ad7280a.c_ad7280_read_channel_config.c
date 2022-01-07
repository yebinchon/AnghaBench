
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7280_state {int cell_threshhigh; int cell_threshlow; int aux_threshhigh; int aux_threshlow; } ;
typedef int ssize_t ;






 int EINVAL ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7280_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad7280_read_channel_config(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7280_state *st = iio_priv(indio_dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 unsigned int val;

 switch (this_attr->address) {
 case 129:
  val = 1000 + (st->cell_threshhigh * 1568) / 100;
  break;
 case 128:
  val = 1000 + (st->cell_threshlow * 1568) / 100;
  break;
 case 131:
  val = (st->aux_threshhigh * 196) / 10;
  break;
 case 130:
  val = (st->aux_threshlow * 196) / 10;
  break;
 default:
  return -EINVAL;
 }

 return sprintf(buf, "%u\n", val);
}
