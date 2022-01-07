
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_pcie {scalar_t__ parf; } ;


 int BIT (int) ;
 scalar_t__ PCIE20_PARF_LTSSM ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qcom_pcie_2_3_2_ltssm_enable(struct qcom_pcie *pcie)
{
 u32 val;


 val = readl(pcie->parf + PCIE20_PARF_LTSSM);
 val |= BIT(8);
 writel(val, pcie->parf + PCIE20_PARF_LTSSM);
}
