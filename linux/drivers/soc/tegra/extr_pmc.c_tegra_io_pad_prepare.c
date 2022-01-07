
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {int dev; scalar_t__ clk; } ;
typedef enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;


 unsigned long DIV_ROUND_UP (int,unsigned long) ;
 int DPD_SAMPLE ;
 unsigned long DPD_SAMPLE_ENABLE ;
 int ENODEV ;
 int SEL_DPD_TIM ;
 unsigned long clk_get_rate (scalar_t__) ;
 int dev_err (int ,char*) ;
 int tegra_io_pad_get_dpd_register_bit (struct tegra_pmc*,int,unsigned long*,unsigned long*,int *) ;
 int tegra_pmc_writel (struct tegra_pmc*,unsigned long,int ) ;

__attribute__((used)) static int tegra_io_pad_prepare(struct tegra_pmc *pmc, enum tegra_io_pad id,
    unsigned long *request, unsigned long *status,
    u32 *mask)
{
 unsigned long rate, value;
 int err;

 err = tegra_io_pad_get_dpd_register_bit(pmc, id, request, status, mask);
 if (err)
  return err;

 if (pmc->clk) {
  rate = clk_get_rate(pmc->clk);
  if (!rate) {
   dev_err(pmc->dev, "failed to get clock rate\n");
   return -ENODEV;
  }

  tegra_pmc_writel(pmc, DPD_SAMPLE_ENABLE, DPD_SAMPLE);


  value = DIV_ROUND_UP(1000000000, rate);
  value = DIV_ROUND_UP(200, value);
  tegra_pmc_writel(pmc, value, SEL_DPD_TIM);
 }

 return 0;
}
