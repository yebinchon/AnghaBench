
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxfb_info {int enabled; scalar_t__ regs; int clk_ipg; int clk_ahb; int clk_per; } ;


 scalar_t__ LCDC_RMCR ;
 int clk_disable_unprepare (int ) ;
 int pr_debug (char*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void imxfb_disable_controller(struct imxfb_info *fbi)
{
 if (!fbi->enabled)
  return;

 pr_debug("Disabling LCD controller\n");

 clk_disable_unprepare(fbi->clk_per);
 clk_disable_unprepare(fbi->clk_ahb);
 clk_disable_unprepare(fbi->clk_ipg);
 fbi->enabled = 0;

 writel(0, fbi->regs + LCDC_RMCR);
}
