
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ziirave_wdt_data {size_t reset_reason; int sysfs_mutex; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct ziirave_wdt_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;
 struct i2c_client* to_i2c_client (int ) ;
 char** ziirave_reasons ;

__attribute__((used)) static ssize_t ziirave_wdt_sysfs_show_reason(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct ziirave_wdt_data *w_priv = i2c_get_clientdata(client);
 int ret;

 ret = mutex_lock_interruptible(&w_priv->sysfs_mutex);
 if (ret)
  return ret;

 ret = sprintf(buf, "%s", ziirave_reasons[w_priv->reset_reason]);

 mutex_unlock(&w_priv->sysfs_mutex);

 return ret;
}
