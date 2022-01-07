
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie_resources_2_3_2 {int pipe_clk; } ;
struct TYPE_2__ {struct qcom_pcie_resources_2_3_2 v2_3_2; } ;
struct qcom_pcie {struct dw_pcie* pci; TYPE_1__ res; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int qcom_pcie_post_init_2_3_2(struct qcom_pcie *pcie)
{
 struct qcom_pcie_resources_2_3_2 *res = &pcie->res.v2_3_2;
 struct dw_pcie *pci = pcie->pci;
 struct device *dev = pci->dev;
 int ret;

 ret = clk_prepare_enable(res->pipe_clk);
 if (ret) {
  dev_err(dev, "cannot prepare/enable pipe clock\n");
  return ret;
 }

 return 0;
}
