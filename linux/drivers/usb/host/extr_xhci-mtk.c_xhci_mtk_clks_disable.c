
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int ref_clk; int sys_clk; int xhci_clk; int mcu_clk; int dma_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void xhci_mtk_clks_disable(struct xhci_hcd_mtk *mtk)
{
 clk_disable_unprepare(mtk->dma_clk);
 clk_disable_unprepare(mtk->mcu_clk);
 clk_disable_unprepare(mtk->xhci_clk);
 clk_disable_unprepare(mtk->sys_clk);
 clk_disable_unprepare(mtk->ref_clk);
}
