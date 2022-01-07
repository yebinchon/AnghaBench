
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct w1_slave {scalar_t__* family_data; struct w1_master* master; } ;
struct w1_master {int bus_mutex; } ;
struct device {int dummy; } ;
typedef int rom ;


 int EINTR ;
 int ENODEV ;
 int THERM_REFCNT (scalar_t__*) ;
 int W1_COPY_SCRATCHPAD ;
 int W1_READ_PSUPPLY ;
 int atomic_dec (int ) ;
 int atomic_inc (int ) ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int memset (scalar_t__*,int ,int) ;
 unsigned long msleep_interruptible (unsigned int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int w1_next_pullup (struct w1_master*,unsigned int) ;
 scalar_t__ w1_read_8 (struct w1_master*) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_strong_pullup ;
 int w1_write_8 (struct w1_master*,int ) ;

__attribute__((used)) static inline int w1_therm_eeprom(struct device *device)
{
 struct w1_slave *sl = dev_to_w1_slave(device);
 struct w1_master *dev = sl->master;
 u8 rom[9], external_power;
 int ret, max_trying = 10;
 u8 *family_data = sl->family_data;

 if (!sl->family_data) {
  ret = -ENODEV;
  goto error;
 }


 atomic_inc(THERM_REFCNT(family_data));

 ret = mutex_lock_interruptible(&dev->bus_mutex);
 if (ret != 0)
  goto dec_refcnt;

 memset(rom, 0, sizeof(rom));

 while (max_trying--) {
  if (!w1_reset_select_slave(sl)) {
   unsigned int tm = 10;
   unsigned long sleep_rem;


   w1_write_8(dev, W1_READ_PSUPPLY);
   external_power = w1_read_8(dev);

   if (w1_reset_select_slave(sl))
    continue;


   if (w1_strong_pullup == 2 ||
       (!external_power && w1_strong_pullup))
    w1_next_pullup(dev, tm);

   w1_write_8(dev, W1_COPY_SCRATCHPAD);

   if (external_power) {
    mutex_unlock(&dev->bus_mutex);

    sleep_rem = msleep_interruptible(tm);
    if (sleep_rem != 0) {
     ret = -EINTR;
     goto dec_refcnt;
    }

    ret = mutex_lock_interruptible(&dev->bus_mutex);
    if (ret != 0)
     goto dec_refcnt;
   } else if (!w1_strong_pullup) {
    sleep_rem = msleep_interruptible(tm);
    if (sleep_rem != 0) {
     ret = -EINTR;
     goto mt_unlock;
    }
   }

   break;
  }
 }

mt_unlock:
 mutex_unlock(&dev->bus_mutex);
dec_refcnt:
 atomic_dec(THERM_REFCNT(family_data));
error:
 return ret;
}
