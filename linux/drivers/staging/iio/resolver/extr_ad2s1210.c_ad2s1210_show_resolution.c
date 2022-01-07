
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int resolution; } ;
typedef int ssize_t ;


 int dev_to_iio_dev (struct device*) ;
 struct ad2s1210_state* iio_priv (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad2s1210_show_resolution(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));

 return sprintf(buf, "%d\n", st->resolution);
}
