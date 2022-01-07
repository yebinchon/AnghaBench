
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct w1_slave {int reg_num; struct w1_master* master; } ;
struct w1_master {int dummy; } ;


 int BIT (int) ;
 int W1_ALARM_SEARCH ;
 int W1_SEARCH ;
 int le64_to_cpu (int) ;
 scalar_t__ w1_reset_bus (struct w1_master*) ;
 int w1_triplet (struct w1_master*,int) ;
 int w1_write_8 (struct w1_master*,int ) ;

__attribute__((used)) static int w1_ds2405_select(struct w1_slave *sl, bool only_active)
{
 struct w1_master *dev = sl->master;

 u64 dev_addr = le64_to_cpu(*(u64 *)&sl->reg_num);
 unsigned int bit_ctr;

 if (w1_reset_bus(dev) != 0)
  return 0;





 w1_write_8(dev, only_active ? W1_ALARM_SEARCH : W1_SEARCH);

 for (bit_ctr = 0; bit_ctr < 64; bit_ctr++) {
  int bit2send = !!(dev_addr & BIT(bit_ctr));
  u8 ret;

  ret = w1_triplet(dev, bit2send);

  if ((ret & (BIT(0) | BIT(1))) ==
      (BIT(0) | BIT(1)))
   return 0;

  if (!!(ret & BIT(2)) != bit2send)

   return 0;
 }

 return 1;
}
