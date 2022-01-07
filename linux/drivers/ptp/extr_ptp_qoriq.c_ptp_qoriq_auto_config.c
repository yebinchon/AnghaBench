
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned long u32 ;
struct TYPE_2__ {int max_adj; } ;
struct ptp_qoriq {unsigned long tclk_period; int tmr_add; TYPE_1__ caps; scalar_t__ tmr_fiper2; scalar_t__ tmr_fiper1; int tmr_prsc; int cksel; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int DEFAULT_CKSEL ;
 scalar_t__ DEFAULT_FIPER1_PERIOD ;
 scalar_t__ DEFAULT_FIPER2_PERIOD ;
 int DEFAULT_TMR_PRSC ;
 int EINVAL ;
 int IS_ERR (struct clk*) ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int div_u64 (int,unsigned long) ;
 int div_u64_rem (int,unsigned long,unsigned long*) ;
 struct clk* of_clk_get (struct device_node*,int ) ;
 int pr_err (char*) ;
 unsigned long ptp_qoriq_nominal_freq (unsigned long) ;

__attribute__((used)) static int ptp_qoriq_auto_config(struct ptp_qoriq *ptp_qoriq,
     struct device_node *node)
{
 struct clk *clk;
 u64 freq_comp;
 u64 max_adj;
 u32 nominal_freq;
 u32 remainder = 0;
 u32 clk_src = 0;

 ptp_qoriq->cksel = DEFAULT_CKSEL;

 clk = of_clk_get(node, 0);
 if (!IS_ERR(clk)) {
  clk_src = clk_get_rate(clk);
  clk_put(clk);
 }

 if (clk_src <= 100000000UL) {
  pr_err("error reference clock value, or lower than 100MHz\n");
  return -EINVAL;
 }

 nominal_freq = ptp_qoriq_nominal_freq(clk_src);
 if (!nominal_freq)
  return -EINVAL;

 ptp_qoriq->tclk_period = 1000000000UL / nominal_freq;
 ptp_qoriq->tmr_prsc = DEFAULT_TMR_PRSC;





 freq_comp = ((u64)1 << 32) * nominal_freq;
 freq_comp = div_u64_rem(freq_comp, clk_src, &remainder);
 if (remainder)
  freq_comp++;

 ptp_qoriq->tmr_add = freq_comp;
 ptp_qoriq->tmr_fiper1 = DEFAULT_FIPER1_PERIOD - ptp_qoriq->tclk_period;
 ptp_qoriq->tmr_fiper2 = DEFAULT_FIPER2_PERIOD - ptp_qoriq->tclk_period;




 max_adj = 1000000000ULL * (clk_src - nominal_freq);
 max_adj = div_u64(max_adj, nominal_freq) - 1;
 ptp_qoriq->caps.max_adj = max_adj;

 return 0;
}
