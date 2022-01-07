
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int hysteresis; int lock; int resolution; } ;
typedef int ssize_t ;


 unsigned char AD2S1210_ENABLE_HYSTERESIS ;
 int AD2S1210_MSB_IS_HIGH ;
 unsigned char AD2S1210_MSB_IS_LOW ;
 unsigned char AD2S1210_REG_CONTROL ;
 unsigned char AD2S1210_SET_RESOLUTION ;
 int EINVAL ;
 int EIO ;
 int ad2s1210_config_read (struct ad2s1210_state*,unsigned char) ;
 int ad2s1210_config_write (struct ad2s1210_state*,unsigned char) ;
 int * ad2s1210_resolution_value ;
 int ad2s1210_set_resolution_pin (struct ad2s1210_state*) ;
 int dev_err (struct device*,char*) ;
 int dev_to_iio_dev (struct device*) ;
 struct ad2s1210_state* iio_priv (int ) ;
 int kstrtou8 (char const*,int,unsigned char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t ad2s1210_store_control(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t len)
{
 struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 unsigned char udata;
 unsigned char data;
 int ret;

 ret = kstrtou8(buf, 16, &udata);
 if (ret)
  return -EINVAL;

 mutex_lock(&st->lock);
 ret = ad2s1210_config_write(st, AD2S1210_REG_CONTROL);
 if (ret < 0)
  goto error_ret;
 data = udata & AD2S1210_MSB_IS_LOW;
 ret = ad2s1210_config_write(st, data);
 if (ret < 0)
  goto error_ret;

 ret = ad2s1210_config_read(st, AD2S1210_REG_CONTROL);
 if (ret < 0)
  goto error_ret;
 if (ret & AD2S1210_MSB_IS_HIGH) {
  ret = -EIO;
  dev_err(dev,
   "ad2s1210: write control register fail\n");
  goto error_ret;
 }
 st->resolution =
  ad2s1210_resolution_value[data & AD2S1210_SET_RESOLUTION];
 ad2s1210_set_resolution_pin(st);
 ret = len;
 st->hysteresis = !!(data & AD2S1210_ENABLE_HYSTERESIS);

error_ret:
 mutex_unlock(&st->lock);
 return ret;
}
