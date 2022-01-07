
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_2_1_0 {int supplies; int phy_clk; int core_clk; int iface_clk; int pci_reset; int por_reset; int ahb_reset; int axi_reset; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_1_0 v2_1_0; } ;
struct qcom_pcie {TYPE_1__ res; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void qcom_pcie_deinit_2_1_0(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_2_1_0 *res = &pcie->res.v2_1_0;

 reset_control_assert(res->pci_reset);
 reset_control_assert(res->axi_reset);
 reset_control_assert(res->ahb_reset);
 reset_control_assert(res->por_reset);
 reset_control_assert(res->pci_reset);
 clk_disable_unprepare(res->iface_clk);
 clk_disable_unprepare(res->core_clk);
 clk_disable_unprepare(res->phy_clk);
 regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
}
