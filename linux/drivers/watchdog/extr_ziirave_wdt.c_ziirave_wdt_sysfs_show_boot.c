
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int minor; int major; } ;
struct ziirave_wdt_data {int sysfs_mutex; TYPE_1__ bootloader_rev; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 char* ZIIRAVE_BL_VERSION_FMT ;
 struct ziirave_wdt_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int ,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static ssize_t ziirave_wdt_sysfs_show_boot(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct ziirave_wdt_data *w_priv = i2c_get_clientdata(client);
 int ret;

 ret = mutex_lock_interruptible(&w_priv->sysfs_mutex);
 if (ret)
  return ret;

 ret = sprintf(buf, ZIIRAVE_BL_VERSION_FMT, w_priv->bootloader_rev.major,
        w_priv->bootloader_rev.minor);

 mutex_unlock(&w_priv->sysfs_mutex);

 return ret;
}
