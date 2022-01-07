
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int ref_clk; int sys_clk; int xhci_clk; int mcu_clk; int dev; int dma_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int xhci_mtk_clks_enable(struct xhci_hcd_mtk *mtk)
{
 int ret;

 ret = clk_prepare_enable(mtk->ref_clk);
 if (ret) {
  dev_err(mtk->dev, "failed to enable ref_clk\n");
  goto ref_clk_err;
 }

 ret = clk_prepare_enable(mtk->sys_clk);
 if (ret) {
  dev_err(mtk->dev, "failed to enable sys_clk\n");
  goto sys_clk_err;
 }

 ret = clk_prepare_enable(mtk->xhci_clk);
 if (ret) {
  dev_err(mtk->dev, "failed to enable xhci_clk\n");
  goto xhci_clk_err;
 }

 ret = clk_prepare_enable(mtk->mcu_clk);
 if (ret) {
  dev_err(mtk->dev, "failed to enable mcu_clk\n");
  goto mcu_clk_err;
 }

 ret = clk_prepare_enable(mtk->dma_clk);
 if (ret) {
  dev_err(mtk->dev, "failed to enable dma_clk\n");
  goto dma_clk_err;
 }

 return 0;

dma_clk_err:
 clk_disable_unprepare(mtk->mcu_clk);
mcu_clk_err:
 clk_disable_unprepare(mtk->xhci_clk);
xhci_clk_err:
 clk_disable_unprepare(mtk->sys_clk);
sys_clk_err:
 clk_disable_unprepare(mtk->ref_clk);
ref_clk_err:
 return ret;
}
