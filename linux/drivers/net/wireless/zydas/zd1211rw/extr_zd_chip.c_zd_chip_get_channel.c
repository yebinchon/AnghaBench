
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int channel; } ;
struct zd_chip {int mutex; TYPE_1__ rf; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u8 zd_chip_get_channel(struct zd_chip *chip)
{
 u8 channel;

 mutex_lock(&chip->mutex);
 channel = chip->rf.channel;
 mutex_unlock(&chip->mutex);
 return channel;
}
