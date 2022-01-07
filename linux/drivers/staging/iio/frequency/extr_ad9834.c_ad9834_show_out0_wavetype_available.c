
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9834_state {scalar_t__ devid; int control; } ;
typedef int ssize_t ;


 int AD9834_OPBITEN ;
 scalar_t__ ID_AD9833 ;
 scalar_t__ ID_AD9837 ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad9834_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static
ssize_t ad9834_show_out0_wavetype_available(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad9834_state *st = iio_priv(indio_dev);
 char *str;

 if (st->devid == ID_AD9833 || st->devid == ID_AD9837)
  str = "sine triangle square";
 else if (st->control & AD9834_OPBITEN)
  str = "sine";
 else
  str = "sine triangle";

 return sprintf(buf, "%s\n", str);
}
