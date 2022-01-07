
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct rmobile_pm_domain {scalar_t__ base; TYPE_1__ genpd; int bit_shift; } ;


 unsigned int BIT (int ) ;
 int EIO ;
 scalar_t__ PSTR ;
 int PSTR_DELAY_US ;
 int PSTR_RETRIES ;
 scalar_t__ SWUCR ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int cpu_relax () ;
 int pr_debug (char*,int ,unsigned int,unsigned int) ;
 int udelay (int ) ;

__attribute__((used)) static int __rmobile_pd_power_up(struct rmobile_pm_domain *rmobile_pd)
{
 unsigned int mask = BIT(rmobile_pd->bit_shift);
 unsigned int retry_count;
 int ret = 0;

 if (__raw_readl(rmobile_pd->base + PSTR) & mask)
  return ret;

 __raw_writel(mask, rmobile_pd->base + SWUCR);

 for (retry_count = 2 * PSTR_RETRIES; retry_count; retry_count--) {
  if (!(__raw_readl(rmobile_pd->base + SWUCR) & mask))
   break;
  if (retry_count > PSTR_RETRIES)
   udelay(PSTR_DELAY_US);
  else
   cpu_relax();
 }
 if (!retry_count)
  ret = -EIO;

 pr_debug("%s: Power on, 0x%08x -> PSTR = 0x%08x\n",
   rmobile_pd->genpd.name, mask,
   __raw_readl(rmobile_pd->base + PSTR));

 return ret;
}
