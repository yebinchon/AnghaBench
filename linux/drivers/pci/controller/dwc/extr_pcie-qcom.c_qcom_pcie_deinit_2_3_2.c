
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_2_3_2 {int supplies; int aux_clk; int cfg_clk; int master_clk; int slave_clk; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_2 v2_3_2; } ;
struct qcom_pcie {TYPE_1__ res; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void qcom_pcie_deinit_2_3_2(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_2_3_2 *res = &pcie->res.v2_3_2;

 clk_disable_unprepare(res->slave_clk);
 clk_disable_unprepare(res->master_clk);
 clk_disable_unprepare(res->cfg_clk);
 clk_disable_unprepare(res->aux_clk);

 regulator_bulk_disable(ARRAY_SIZE(res->supplies), res->supplies);
}
