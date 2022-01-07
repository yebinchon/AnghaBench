
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct q6v5_wcss {int wcss_reset; scalar_t__ rmb_base; int wcss_aon_reset; int dev; int halt_wcss; int halt_map; } ;


 int BIT (int) ;
 int HALT_CHECK_MAX_LOOPS ;
 int SSCAON_BUS_EN ;
 int SSCAON_BUS_MUX_MASK ;
 scalar_t__ SSCAON_CONFIG ;
 int SSCAON_ENABLE ;
 scalar_t__ SSCAON_STATUS ;
 int dev_err (int ,char*,int) ;
 int q6v5_wcss_halt_axi_port (struct q6v5_wcss*,int ,int ) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;
 int reset_control_assert (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int q6v5_wcss_powerdown(struct q6v5_wcss *wcss)
{
 int ret;
 u32 val;


 q6v5_wcss_halt_axi_port(wcss, wcss->halt_map, wcss->halt_wcss);


 val = readl(wcss->rmb_base + SSCAON_CONFIG);
 val |= SSCAON_ENABLE;
 writel(val, wcss->rmb_base + SSCAON_CONFIG);


 val |= SSCAON_BUS_EN;
 val &= ~SSCAON_BUS_MUX_MASK;
 writel(val, wcss->rmb_base + SSCAON_CONFIG);


 val |= BIT(1);
 writel(val, wcss->rmb_base + SSCAON_CONFIG);


 ret = readl_poll_timeout(wcss->rmb_base + SSCAON_STATUS,
     val, (val & 0xffff) == 0x400, 1000,
     HALT_CHECK_MAX_LOOPS);
 if (ret) {
  dev_err(wcss->dev,
   "can't get SSCAON_STATUS rc:%d)\n", ret);
  return ret;
 }


 reset_control_assert(wcss->wcss_aon_reset);


 val = readl(wcss->rmb_base + SSCAON_CONFIG);
 val &= ~SSCAON_ENABLE;
 writel(val, wcss->rmb_base + SSCAON_CONFIG);


 reset_control_assert(wcss->wcss_reset);

 return 0;
}
