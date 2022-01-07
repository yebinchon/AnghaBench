
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_efuse {int mutex; int dev; int hwlock; } ;


 int SC27XX_EFUSE_HWLOCK_TIMEOUT ;
 int dev_err (int ,char*) ;
 int hwspin_lock_timeout_raw (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sc27xx_efuse_lock(struct sc27xx_efuse *efuse)
{
 int ret;

 mutex_lock(&efuse->mutex);

 ret = hwspin_lock_timeout_raw(efuse->hwlock,
          SC27XX_EFUSE_HWLOCK_TIMEOUT);
 if (ret) {
  dev_err(efuse->dev, "timeout to get the hwspinlock\n");
  mutex_unlock(&efuse->mutex);
  return ret;
 }

 return 0;
}
