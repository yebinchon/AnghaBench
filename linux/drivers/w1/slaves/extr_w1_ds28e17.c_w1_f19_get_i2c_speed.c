
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct w1_slave {TYPE_1__* master; struct w1_f19_data* family_data; } ;
struct w1_f19_data {int speed; } ;
struct TYPE_3__ {int bus_mutex; } ;


 int EIO ;
 int W1_F19_READ_CONFIGURATION ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w1_read_8 (TYPE_1__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_8 (TYPE_1__*,int ) ;

__attribute__((used)) static int w1_f19_get_i2c_speed(struct w1_slave *sl)
{
 struct w1_f19_data *data = sl->family_data;
 int result = -EIO;


 mutex_lock(&sl->master->bus_mutex);


 if (w1_reset_select_slave(sl))
  goto error;


 w1_write_8(sl->master, W1_F19_READ_CONFIGURATION);
 result = w1_read_8(sl->master);
 if (result < 0 || result > 2) {
  result = -EIO;
  goto error;
 }


 data->speed = result;

error:

 mutex_unlock(&sl->master->bus_mutex);

 return result;
}
