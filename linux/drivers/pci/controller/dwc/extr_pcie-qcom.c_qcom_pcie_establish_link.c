
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_pcie {TYPE_1__* ops; struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int (* ltssm_enable ) (struct qcom_pcie*) ;} ;


 scalar_t__ dw_pcie_link_up (struct dw_pcie*) ;
 int dw_pcie_wait_for_link (struct dw_pcie*) ;
 int stub1 (struct qcom_pcie*) ;

__attribute__((used)) static int qcom_pcie_establish_link(struct qcom_pcie *pcie)
{
 struct dw_pcie *pci = pcie->pci;

 if (dw_pcie_link_up(pci))
  return 0;


 if (pcie->ops->ltssm_enable)
  pcie->ops->ltssm_enable(pcie);

 return dw_pcie_wait_for_link(pci);
}
