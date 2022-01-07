
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int CPU_GEN ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int) ;
 int rtl92e_readl (struct net_device*,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static bool _rtl92e_wait_for_fw(struct net_device *dev, u32 mask, u32 timeout)
{
 unsigned long deadline = jiffies + msecs_to_jiffies(timeout);

 while (time_before(jiffies, deadline)) {
  if (rtl92e_readl(dev, CPU_GEN) & mask)
   return 1;
  mdelay(2);
 }
 return 0;
}
