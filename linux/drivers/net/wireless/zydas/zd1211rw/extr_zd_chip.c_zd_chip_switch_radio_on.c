
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int mutex; int rf; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_switch_radio_on (int *) ;

int zd_chip_switch_radio_on(struct zd_chip *chip)
{
 int r;

 mutex_lock(&chip->mutex);
 r = zd_switch_radio_on(&chip->rf);
 mutex_unlock(&chip->mutex);
 return r;
}
