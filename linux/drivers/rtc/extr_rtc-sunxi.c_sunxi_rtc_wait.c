
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sunxi_rtc_dev {scalar_t__ base; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ time_before (unsigned long,unsigned long const) ;

__attribute__((used)) static int sunxi_rtc_wait(struct sunxi_rtc_dev *chip, int offset,
     unsigned int mask, unsigned int ms_timeout)
{
 const unsigned long timeout = jiffies + msecs_to_jiffies(ms_timeout);
 u32 reg;

 do {
  reg = readl(chip->base + offset);
  reg &= mask;

  if (reg == mask)
   return 0;

 } while (time_before(jiffies, timeout));

 return -ETIMEDOUT;
}
