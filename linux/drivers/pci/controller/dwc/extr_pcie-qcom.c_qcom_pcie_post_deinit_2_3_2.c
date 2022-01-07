
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_2_3_2 {int pipe_clk; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_2 v2_3_2; } ;
struct qcom_pcie {TYPE_1__ res; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void qcom_pcie_post_deinit_2_3_2(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_2_3_2 *res = &pcie->res.v2_3_2;

 clk_disable_unprepare(res->pipe_clk);
}
