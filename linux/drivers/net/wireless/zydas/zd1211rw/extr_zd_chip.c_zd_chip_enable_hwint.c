
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; } ;


 int CR_INTERRUPT ;
 int HWINT_ENABLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_iowrite32_locked (struct zd_chip*,int ,int ) ;

int zd_chip_enable_hwint(struct zd_chip *chip)
{
 int r;

 mutex_lock(&chip->mutex);
 r = zd_iowrite32_locked(chip, HWINT_ENABLED, CR_INTERRUPT);
 mutex_unlock(&chip->mutex);
 return r;
}
