
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7816_chip_info {int channel_id; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7816_chip_info* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad7816_show_channel(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7816_chip_info *chip = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", chip->channel_id);
}
