
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_pcie {scalar_t__ elbi; } ;


 scalar_t__ PCIE20_ELBI_SYS_CTRL ;
 int PCIE20_ELBI_SYS_CTRL_LT_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qcom_pcie_2_1_0_ltssm_enable(struct qcom_pcie *pcie)
{
 u32 val;


 val = readl(pcie->elbi + PCIE20_ELBI_SYS_CTRL);
 val |= PCIE20_ELBI_SYS_CTRL_LT_ENABLE;
 writel(val, pcie->elbi + PCIE20_ELBI_SYS_CTRL);
}
