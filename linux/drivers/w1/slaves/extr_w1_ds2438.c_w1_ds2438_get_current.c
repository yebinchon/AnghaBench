
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct w1_slave {TYPE_1__* master; } ;
typedef int int16_t ;
struct TYPE_2__ {int bus_mutex; } ;


 size_t DS2438_CURRENT_LSB ;
 size_t DS2438_CURRENT_MSB ;
 int DS2438_PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_ds2438_get_page (struct w1_slave*,int ,scalar_t__*) ;

__attribute__((used)) static int w1_ds2438_get_current(struct w1_slave *sl, int16_t *voltage)
{
 u8 w1_buf[DS2438_PAGE_SIZE + 1 ];
 int ret;

 mutex_lock(&sl->master->bus_mutex);

 if (w1_ds2438_get_page(sl, 0, w1_buf) == 0) {

  *voltage = (((int16_t) w1_buf[DS2438_CURRENT_MSB]) << 8) | ((int16_t) w1_buf[DS2438_CURRENT_LSB]);
  ret = 0;
 } else
  ret = -1;

 mutex_unlock(&sl->master->bus_mutex);

 return ret;
}
