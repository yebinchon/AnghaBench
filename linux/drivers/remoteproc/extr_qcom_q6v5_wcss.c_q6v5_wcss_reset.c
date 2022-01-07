
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct q6v5_wcss {scalar_t__ reg_base; int dev; } ;


 int BIT (int) ;
 int HALT_CHECK_MAX_LOOPS ;
 int MEM_BANKS ;
 int Q6SS_BHS_ON ;
 int Q6SS_BUS_ARES_ENABLE ;
 int Q6SS_CLAMP_IO ;
 int Q6SS_CLAMP_QMC_MEM ;
 int Q6SS_CLAMP_WL ;
 int Q6SS_CLK_ENABLE ;
 int Q6SS_CORE_ARES ;
 scalar_t__ Q6SS_GFMUX_CTL_REG ;
 int Q6SS_L2DATA_STBY_N ;
 int Q6SS_LDO_BYP ;
 scalar_t__ Q6SS_MEM_PWR_CTL ;
 scalar_t__ Q6SS_PWR_CTL_REG ;
 scalar_t__ Q6SS_RESET_REG ;
 int Q6SS_SLP_RET_N ;
 int Q6SS_STOP_CORE ;
 scalar_t__ Q6SS_XO_CBCR ;
 int dev_err (int ,char*,int) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int q6v5_wcss_reset(struct q6v5_wcss *wcss)
{
 int ret;
 u32 val;
 int i;


 val = readl(wcss->reg_base + Q6SS_RESET_REG);
 val |= Q6SS_CORE_ARES | Q6SS_BUS_ARES_ENABLE | Q6SS_STOP_CORE;
 writel(val, wcss->reg_base + Q6SS_RESET_REG);


 val = readl(wcss->reg_base + Q6SS_XO_CBCR);
 val |= 0x1;
 writel(val, wcss->reg_base + Q6SS_XO_CBCR);


 ret = readl_poll_timeout(wcss->reg_base + Q6SS_XO_CBCR,
     val, !(val & BIT(31)), 1,
     HALT_CHECK_MAX_LOOPS);
 if (ret) {
  dev_err(wcss->dev,
   "xo cbcr enabling timed out (rc:%d)\n", ret);
  return ret;
 }

 val = readl(wcss->reg_base + Q6SS_PWR_CTL_REG);
 val |= Q6SS_BHS_ON;
 writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);
 udelay(1);


 val |= Q6SS_LDO_BYP;
 writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);


 val = readl(wcss->reg_base + Q6SS_PWR_CTL_REG);
 val &= ~Q6SS_CLAMP_QMC_MEM;
 writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);


 val |= Q6SS_L2DATA_STBY_N | Q6SS_SLP_RET_N;
 writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);


 val = readl(wcss->reg_base + Q6SS_MEM_PWR_CTL);
 for (i = MEM_BANKS; i >= 0; i--) {
  val |= BIT(i);
  writel(val, wcss->reg_base + Q6SS_MEM_PWR_CTL);





  val |= readl(wcss->reg_base + Q6SS_MEM_PWR_CTL);
  udelay(1);
 }

 val = readl(wcss->reg_base + Q6SS_PWR_CTL_REG);
 val &= ~Q6SS_CLAMP_WL;
 writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);


 val &= ~Q6SS_CLAMP_IO;
 writel(val, wcss->reg_base + Q6SS_PWR_CTL_REG);


 val = readl(wcss->reg_base + Q6SS_RESET_REG);
 val &= ~Q6SS_CORE_ARES;
 writel(val, wcss->reg_base + Q6SS_RESET_REG);


 val = readl(wcss->reg_base + Q6SS_GFMUX_CTL_REG);
 val |= Q6SS_CLK_ENABLE;
 writel(val, wcss->reg_base + Q6SS_GFMUX_CTL_REG);


 val = readl(wcss->reg_base + Q6SS_RESET_REG);
 val &= ~Q6SS_STOP_CORE;
 writel(val, wcss->reg_base + Q6SS_RESET_REG);

 return 0;
}
