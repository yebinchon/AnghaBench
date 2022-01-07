
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7192_state {int gpocon; } ;
typedef int ssize_t ;


 int AD7192_GPOCON_BPDSW ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7192_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad7192_show_bridge_switch(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7192_state *st = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", !!(st->gpocon & AD7192_GPOCON_BPDSW));
}
