
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dummy; } ;


 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (unsigned long) ;
 int ufshcd_readl (struct ufs_hba*,int) ;
 int usleep_range (unsigned long,unsigned long) ;

int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
    u32 val, unsigned long interval_us,
    unsigned long timeout_ms, bool can_sleep)
{
 int err = 0;
 unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);


 val = val & mask;

 while ((ufshcd_readl(hba, reg) & mask) != val) {
  if (can_sleep)
   usleep_range(interval_us, interval_us + 50);
  else
   udelay(interval_us);
  if (time_after(jiffies, timeout)) {
   if ((ufshcd_readl(hba, reg) & mask) != val)
    err = -ETIMEDOUT;
   break;
  }
 }

 return err;
}
