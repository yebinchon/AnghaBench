
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_2_4_0 {int clks; int num_clks; int ahb_reset; int pwr_reset; int axi_m_sticky_reset; int phy_ahb_reset; int phy_reset; int pipe_sticky_reset; int pipe_reset; int axi_s_reset; int axi_m_reset; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_4_0 v2_4_0; } ;
struct qcom_pcie {TYPE_1__ res; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void qcom_pcie_deinit_2_4_0(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_2_4_0 *res = &pcie->res.v2_4_0;

 reset_control_assert(res->axi_m_reset);
 reset_control_assert(res->axi_s_reset);
 reset_control_assert(res->pipe_reset);
 reset_control_assert(res->pipe_sticky_reset);
 reset_control_assert(res->phy_reset);
 reset_control_assert(res->phy_ahb_reset);
 reset_control_assert(res->axi_m_sticky_reset);
 reset_control_assert(res->pwr_reset);
 reset_control_assert(res->ahb_reset);
 clk_bulk_disable_unprepare(res->num_clks, res->clks);
}
