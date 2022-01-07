
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_2_3_3 {int aux_clk; int ahb_clk; int axi_s_clk; int axi_m_clk; int iface; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_3 v2_3_3; } ;
struct qcom_pcie {TYPE_1__ res; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void qcom_pcie_deinit_2_3_3(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_2_3_3 *res = &pcie->res.v2_3_3;

 clk_disable_unprepare(res->iface);
 clk_disable_unprepare(res->axi_m_clk);
 clk_disable_unprepare(res->axi_s_clk);
 clk_disable_unprepare(res->ahb_clk);
 clk_disable_unprepare(res->aux_clk);
}
