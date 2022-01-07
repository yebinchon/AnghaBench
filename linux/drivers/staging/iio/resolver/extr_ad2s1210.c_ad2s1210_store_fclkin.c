
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {unsigned int fclkin; int lock; } ;
typedef int ssize_t ;


 unsigned int AD2S1210_MAX_CLKIN ;
 unsigned int AD2S1210_MIN_CLKIN ;
 int EINVAL ;
 int ad2s1210_soft_reset (struct ad2s1210_state*) ;
 int ad2s1210_update_frequency_control_word (struct ad2s1210_state*) ;
 int dev_err (struct device*,char*) ;
 int dev_to_iio_dev (struct device*) ;
 struct ad2s1210_state* iio_priv (int ) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t ad2s1210_store_fclkin(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t len)
{
 struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
 unsigned int fclkin;
 int ret;

 ret = kstrtouint(buf, 10, &fclkin);
 if (ret)
  return ret;
 if (fclkin < AD2S1210_MIN_CLKIN || fclkin > AD2S1210_MAX_CLKIN) {
  dev_err(dev, "ad2s1210: fclkin out of range\n");
  return -EINVAL;
 }

 mutex_lock(&st->lock);
 st->fclkin = fclkin;

 ret = ad2s1210_update_frequency_control_word(st);
 if (ret < 0)
  goto error_ret;
 ret = ad2s1210_soft_reset(st);
error_ret:
 mutex_unlock(&st->lock);

 return ret < 0 ? ret : len;
}
