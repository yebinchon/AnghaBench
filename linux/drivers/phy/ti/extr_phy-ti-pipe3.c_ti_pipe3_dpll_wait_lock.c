
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_pipe3 {int dev; int pll_ctrl_base; } ;


 int EBUSY ;
 int PLL_LOCK ;
 int PLL_LOCK_TIME ;
 int PLL_STATUS ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int ti_pipe3_readl (int ,int ) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int ti_pipe3_dpll_wait_lock(struct ti_pipe3 *phy)
{
 u32 val;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(PLL_LOCK_TIME);
 do {
  cpu_relax();
  val = ti_pipe3_readl(phy->pll_ctrl_base, PLL_STATUS);
  if (val & PLL_LOCK)
   return 0;
 } while (!time_after(jiffies, timeout));

 dev_err(phy->dev, "DPLL failed to lock\n");
 return -EBUSY;
}
