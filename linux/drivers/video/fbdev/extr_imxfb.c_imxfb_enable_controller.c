
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxfb_info {int enabled; int map_dma; scalar_t__ regs; int clk_ipg; int clk_ahb; int clk_per; } ;


 int CPOS_CC0 ;
 int CPOS_CC1 ;
 scalar_t__ LCDC_CPOS ;
 scalar_t__ LCDC_POS ;
 scalar_t__ LCDC_RMCR ;
 scalar_t__ LCDC_SSA ;
 int RMCR_LCDC_EN_MX1 ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int pr_debug (char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int imxfb_enable_controller(struct imxfb_info *fbi)
{
 int ret;

 if (fbi->enabled)
  return 0;

 pr_debug("Enabling LCD controller\n");

 writel(fbi->map_dma, fbi->regs + LCDC_SSA);


 writel(0x00000000, fbi->regs + LCDC_POS);


 writel(readl(fbi->regs + LCDC_CPOS) & ~(CPOS_CC0 | CPOS_CC1),
  fbi->regs + LCDC_CPOS);





 writel(RMCR_LCDC_EN_MX1, fbi->regs + LCDC_RMCR);

 ret = clk_prepare_enable(fbi->clk_ipg);
 if (ret)
  goto err_enable_ipg;

 ret = clk_prepare_enable(fbi->clk_ahb);
 if (ret)
  goto err_enable_ahb;

 ret = clk_prepare_enable(fbi->clk_per);
 if (ret)
  goto err_enable_per;

 fbi->enabled = 1;
 return 0;

err_enable_per:
 clk_disable_unprepare(fbi->clk_ahb);
err_enable_ahb:
 clk_disable_unprepare(fbi->clk_ipg);
err_enable_ipg:
 writel(0, fbi->regs + LCDC_RMCR);

 return ret;
}
