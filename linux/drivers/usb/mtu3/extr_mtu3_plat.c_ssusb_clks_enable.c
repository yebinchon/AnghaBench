
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int sys_clk; int ref_clk; int mcu_clk; int dev; int dma_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int ssusb_clks_enable(struct ssusb_mtk *ssusb)
{
 int ret;

 ret = clk_prepare_enable(ssusb->sys_clk);
 if (ret) {
  dev_err(ssusb->dev, "failed to enable sys_clk\n");
  goto sys_clk_err;
 }

 ret = clk_prepare_enable(ssusb->ref_clk);
 if (ret) {
  dev_err(ssusb->dev, "failed to enable ref_clk\n");
  goto ref_clk_err;
 }

 ret = clk_prepare_enable(ssusb->mcu_clk);
 if (ret) {
  dev_err(ssusb->dev, "failed to enable mcu_clk\n");
  goto mcu_clk_err;
 }

 ret = clk_prepare_enable(ssusb->dma_clk);
 if (ret) {
  dev_err(ssusb->dev, "failed to enable dma_clk\n");
  goto dma_clk_err;
 }

 return 0;

dma_clk_err:
 clk_disable_unprepare(ssusb->mcu_clk);
mcu_clk_err:
 clk_disable_unprepare(ssusb->ref_clk);
ref_clk_err:
 clk_disable_unprepare(ssusb->sys_clk);
sys_clk_err:
 return ret;
}
