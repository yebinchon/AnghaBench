
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int lock; } ;
typedef int ssize_t ;


 int ad2s1210_config_read (struct ad2s1210_state*,int ) ;
 int dev_to_iio_dev (struct device*) ;
 struct ad2s1210_state* iio_priv (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad2s1210_show_reg(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 struct iio_dev_attr *iattr = to_iio_dev_attr(attr);
 int ret;

 mutex_lock(&st->lock);
 ret = ad2s1210_config_read(st, iattr->address);
 mutex_unlock(&st->lock);

 return ret < 0 ? ret : sprintf(buf, "%d\n", ret);
}
