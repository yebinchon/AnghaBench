
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct TYPE_2__ {int bus_mutex; } ;


 unsigned int DS2438_MAX_CONVERSION_TIME ;
 int DS2438_PAGE_SIZE ;
 int DS2438_STATUS_AD ;
 size_t DS2438_VOLTAGE_LSB ;
 size_t DS2438_VOLTAGE_MSB ;
 int W1_DS2438_CONVERT_VOLTAGE ;
 unsigned int W1_DS2438_RETRIES ;
 unsigned long msleep_interruptible (unsigned int) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_ds2438_change_config_bit (struct w1_slave*,int ,int) ;
 scalar_t__ w1_ds2438_get_page (struct w1_slave*,int ,scalar_t__*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_8 (TYPE_1__*,int ) ;

__attribute__((used)) static int w1_ds2438_get_voltage(struct w1_slave *sl,
     int adc_input, uint16_t *voltage)
{
 unsigned int retries = W1_DS2438_RETRIES;
 u8 w1_buf[DS2438_PAGE_SIZE + 1 ];
 unsigned int tm = DS2438_MAX_CONVERSION_TIME;
 unsigned long sleep_rem;
 int ret;

 mutex_lock(&sl->master->bus_mutex);

 if (w1_ds2438_change_config_bit(sl, DS2438_STATUS_AD, adc_input)) {
  ret = -1;
  goto pre_unlock;
 }

 while (retries--) {
  if (w1_reset_select_slave(sl))
   continue;
  w1_write_8(sl->master, W1_DS2438_CONVERT_VOLTAGE);

  mutex_unlock(&sl->master->bus_mutex);
  sleep_rem = msleep_interruptible(tm);
  if (sleep_rem != 0) {
   ret = -1;
   goto post_unlock;
  }

  if (mutex_lock_interruptible(&sl->master->bus_mutex) != 0) {
   ret = -1;
   goto post_unlock;
  }

  break;
 }

 if (w1_ds2438_get_page(sl, 0, w1_buf) == 0) {
  *voltage = (((uint16_t) w1_buf[DS2438_VOLTAGE_MSB]) << 8) | ((uint16_t) w1_buf[DS2438_VOLTAGE_LSB]);
  ret = 0;
 } else
  ret = -1;

pre_unlock:
 mutex_unlock(&sl->master->bus_mutex);

post_unlock:
 return ret;
}
