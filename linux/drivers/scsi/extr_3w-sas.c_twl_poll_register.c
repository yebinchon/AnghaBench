
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int TW_Device_Extension ;


 int HZ ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readl (void*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int twl_poll_register(TW_Device_Extension *tw_dev, void *reg, u32 value, u32 result, int seconds)
{
 unsigned long before;
 int retval = 1;
 u32 reg_value;

 reg_value = readl(reg);
 before = jiffies;

        while ((reg_value & value) != result) {
  reg_value = readl(reg);
  if (time_after(jiffies, before + HZ * seconds))
   goto out;
  msleep(50);
 }
 retval = 0;
out:
 return retval;
}
