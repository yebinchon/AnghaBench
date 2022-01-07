
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pcie {int free_ck; struct device* dev; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static void mtk_pcie_subsys_powerdown(struct mtk_pcie *pcie)
{
 struct device *dev = pcie->dev;

 clk_disable_unprepare(pcie->free_ck);

 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
}
