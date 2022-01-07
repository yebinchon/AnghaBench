
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct w1_slave {int dummy; } ;
struct bq27xxx_device_info {int dev; } ;


 int EIO ;
 struct w1_slave* dev_to_w1_slave (int ) ;
 int w1_bq27000_read (struct w1_slave*,scalar_t__) ;

__attribute__((used)) static int bq27xxx_battery_hdq_read(struct bq27xxx_device_info *di, u8 reg,
        bool single)
{
 struct w1_slave *sl = dev_to_w1_slave(di->dev);
 unsigned int timeout = 3;
 int upper, lower;
 int temp;

 if (!single) {




  upper = w1_bq27000_read(sl, reg + 1);
  do {
   temp = upper;
   if (upper < 0)
    return upper;

   lower = w1_bq27000_read(sl, reg);
   if (lower < 0)
    return lower;

   upper = w1_bq27000_read(sl, reg + 1);
  } while (temp != upper && --timeout);

  if (timeout == 0)
   return -EIO;

  return (upper << 8) | lower;
 }

 return w1_bq27000_read(sl, reg);
}
