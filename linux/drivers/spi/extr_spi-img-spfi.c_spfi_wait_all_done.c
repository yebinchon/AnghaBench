
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_spfi {int dev; } ;


 int ETIMEDOUT ;
 int SPFI_INTERRUPT_ALLDONETRIG ;
 int SPFI_INTERRUPT_CLEAR ;
 int SPFI_INTERRUPT_STATUS ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int spfi_readl (struct img_spfi*,int ) ;
 int spfi_reset (struct img_spfi*) ;
 int spfi_writel (struct img_spfi*,int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int spfi_wait_all_done(struct img_spfi *spfi)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(50);

 while (time_before(jiffies, timeout)) {
  u32 status = spfi_readl(spfi, SPFI_INTERRUPT_STATUS);

  if (status & SPFI_INTERRUPT_ALLDONETRIG) {
   spfi_writel(spfi, SPFI_INTERRUPT_ALLDONETRIG,
        SPFI_INTERRUPT_CLEAR);
   return 0;
  }
  cpu_relax();
 }

 dev_err(spfi->dev, "Timed out waiting for transaction to complete\n");
 spfi_reset(spfi);

 return -ETIMEDOUT;
}
