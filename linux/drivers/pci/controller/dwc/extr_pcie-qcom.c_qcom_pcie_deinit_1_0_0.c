
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_1_0_0 {int vdda; int aux; int iface; int master_bus; int slave_bus; int core; } ;
struct TYPE_2__ {struct qcom_pcie_resources_1_0_0 v1_0_0; } ;
struct qcom_pcie {TYPE_1__ res; } ;


 int clk_disable_unprepare (int ) ;
 int regulator_disable (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void qcom_pcie_deinit_1_0_0(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_1_0_0 *res = &pcie->res.v1_0_0;

 reset_control_assert(res->core);
 clk_disable_unprepare(res->slave_bus);
 clk_disable_unprepare(res->master_bus);
 clk_disable_unprepare(res->iface);
 clk_disable_unprepare(res->aux);
 regulator_disable(res->vdda);
}
