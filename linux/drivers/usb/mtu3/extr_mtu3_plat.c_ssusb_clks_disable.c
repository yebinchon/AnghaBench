
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int sys_clk; int ref_clk; int mcu_clk; int dma_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ssusb_clks_disable(struct ssusb_mtk *ssusb)
{
 clk_disable_unprepare(ssusb->dma_clk);
 clk_disable_unprepare(ssusb->mcu_clk);
 clk_disable_unprepare(ssusb->ref_clk);
 clk_disable_unprepare(ssusb->sys_clk);
}
