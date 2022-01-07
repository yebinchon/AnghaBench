
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int tegra_pmc_readl (struct tegra_pmc*,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_io_pad_poll(struct tegra_pmc *pmc, unsigned long offset,
        u32 mask, u32 val, unsigned long timeout)
{
 u32 value;

 timeout = jiffies + msecs_to_jiffies(timeout);

 while (time_after(timeout, jiffies)) {
  value = tegra_pmc_readl(pmc, offset);
  if ((value & mask) == val)
   return 0;

  usleep_range(250, 1000);
 }

 return -ETIMEDOUT;
}
