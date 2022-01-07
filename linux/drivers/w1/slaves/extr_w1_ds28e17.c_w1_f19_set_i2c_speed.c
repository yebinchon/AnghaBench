
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct TYPE_2__ {int bus_mutex; } ;


 int __w1_f19_set_i2c_speed (struct w1_slave*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int w1_f19_set_i2c_speed(struct w1_slave *sl, u8 speed)
{
 int result;


 mutex_lock(&sl->master->bus_mutex);


 result = __w1_f19_set_i2c_speed(sl, speed);


 mutex_unlock(&sl->master->bus_mutex);

 return result;
}
