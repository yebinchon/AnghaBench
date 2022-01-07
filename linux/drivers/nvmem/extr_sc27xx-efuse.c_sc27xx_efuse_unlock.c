
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_efuse {int mutex; int hwlock; } ;


 int hwspin_unlock_raw (int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void sc27xx_efuse_unlock(struct sc27xx_efuse *efuse)
{
 hwspin_unlock_raw(efuse->hwlock);
 mutex_unlock(&efuse->mutex);
}
