
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; } ;


 int disable_hwint (struct zd_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int zd_chip_disable_hwint(struct zd_chip *chip)
{
 int r;

 mutex_lock(&chip->mutex);
 r = disable_hwint(chip);
 mutex_unlock(&chip->mutex);
 return r;
}
