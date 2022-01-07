
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {int aclk_pcie; int aclk_perf_pcie; int hclk_pcie; int clk_pcie_pm; } ;


 int clk_disable_unprepare (int ) ;

void rockchip_pcie_disable_clocks(void *data)
{
 struct rockchip_pcie *rockchip = data;

 clk_disable_unprepare(rockchip->clk_pcie_pm);
 clk_disable_unprepare(rockchip->hclk_pcie);
 clk_disable_unprepare(rockchip->aclk_perf_pcie);
 clk_disable_unprepare(rockchip->aclk_pcie);
}
