
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct w1_slave {int* family_data; struct w1_master* master; } ;
struct w1_master {int bus_mutex; } ;
struct device {int dummy; } ;
typedef int rom ;


 int EINVAL ;
 int ENODEV ;
 int THERM_REFCNT (int*) ;
 int W1_READ_SCRATCHPAD ;
 int W1_WRITE_SCRATCHPAD ;
 int atomic_dec (int ) ;
 int atomic_inc (int ) ;
 struct w1_slave* dev_to_w1_slave (struct device*) ;
 int dev_warn (struct device*,char*,int) ;
 int memset (int*,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;
 int w1_calc_crc8 (int*,int) ;
 int w1_read_block (struct w1_master*,int*,int) ;
 int w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_8 (struct w1_master*,int) ;

__attribute__((used)) static inline int w1_DS18B20_precision(struct device *device, int val)
{
 struct w1_slave *sl = dev_to_w1_slave(device);
 struct w1_master *dev = sl->master;
 u8 rom[9], crc;
 int ret, max_trying = 10;
 u8 *family_data = sl->family_data;
 uint8_t precision_bits;
 uint8_t mask = 0x60;

 if (val > 12 || val < 9) {
  pr_warn("Unsupported precision\n");
  ret = -EINVAL;
  goto error;
 }

 if (!sl->family_data) {
  ret = -ENODEV;
  goto error;
 }


 atomic_inc(THERM_REFCNT(family_data));

 ret = mutex_lock_interruptible(&dev->bus_mutex);
 if (ret != 0)
  goto dec_refcnt;

 memset(rom, 0, sizeof(rom));


 switch (val) {
 case 9:
  precision_bits = 0x00;
  break;
 case 10:
  precision_bits = 0x20;
  break;
 case 11:
  precision_bits = 0x40;
  break;
 case 12:
 default:
  precision_bits = 0x60;
  break;
 }

 while (max_trying--) {
  crc = 0;

  if (!w1_reset_select_slave(sl)) {
   int count = 0;


   w1_write_8(dev, W1_READ_SCRATCHPAD);
   count = w1_read_block(dev, rom, 9);
   if (count != 9)
    dev_warn(device, "w1_read_block() returned %u instead of 9.\n", count);

   crc = w1_calc_crc8(rom, 8);
   if (rom[8] == crc) {
    rom[4] = (rom[4] & ~mask) | (precision_bits & mask);

    if (!w1_reset_select_slave(sl)) {
     w1_write_8(dev, W1_WRITE_SCRATCHPAD);
     w1_write_8(dev, rom[2]);
     w1_write_8(dev, rom[3]);
     w1_write_8(dev, rom[4]);

     break;
    }
   }
  }
 }

 mutex_unlock(&dev->bus_mutex);
dec_refcnt:
 atomic_dec(THERM_REFCNT(family_data));
error:
 return ret;
}
