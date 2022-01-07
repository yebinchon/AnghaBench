
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int lock; int * gpios; } ;
typedef int ssize_t ;


 int AD2S1210_REG_FAULT ;
 size_t AD2S1210_SAMPLE ;
 int ad2s1210_config_read (struct ad2s1210_state*,int ) ;
 int dev_to_iio_dev (struct device*) ;
 int gpiod_set_value (int ,int) ;
 struct ad2s1210_state* iio_priv (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static ssize_t ad2s1210_clear_fault(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t len)
{
 struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 int ret;

 mutex_lock(&st->lock);
 gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);

 udelay(1);
 gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 1);
 ret = ad2s1210_config_read(st, AD2S1210_REG_FAULT);
 if (ret < 0)
  goto error_ret;
 gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);
 gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 1);
error_ret:
 mutex_unlock(&st->lock);

 return ret < 0 ? ret : len;
}
