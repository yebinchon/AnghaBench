
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;
struct armada8k_pcie {struct dw_pcie* pci; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PCIE_GLOBAL_INT_CAUSE1_REG ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int ) ;

__attribute__((used)) static irqreturn_t armada8k_pcie_irq_handler(int irq, void *arg)
{
 struct armada8k_pcie *pcie = arg;
 struct dw_pcie *pci = pcie->pci;
 u32 val;






 val = dw_pcie_readl_dbi(pci, PCIE_GLOBAL_INT_CAUSE1_REG);
 dw_pcie_writel_dbi(pci, PCIE_GLOBAL_INT_CAUSE1_REG, val);

 return IRQ_HANDLED;
}
