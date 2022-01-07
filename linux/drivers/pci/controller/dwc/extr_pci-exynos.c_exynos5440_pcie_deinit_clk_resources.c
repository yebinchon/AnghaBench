
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_pcie {TYPE_1__* clk_res; } ;
struct TYPE_2__ {int clk; int bus_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void exynos5440_pcie_deinit_clk_resources(struct exynos_pcie *ep)
{
 clk_disable_unprepare(ep->clk_res->bus_clk);
 clk_disable_unprepare(ep->clk_res->clk);
}
