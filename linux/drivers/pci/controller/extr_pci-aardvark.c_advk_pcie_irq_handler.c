
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct advk_pcie {int dummy; } ;
typedef int irqreturn_t ;


 int HOST_CTRL_INT_STATUS_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCIE_IRQ_CORE_INT ;
 int advk_pcie_handle_int (struct advk_pcie*) ;
 int advk_readl (struct advk_pcie*,int ) ;
 int advk_writel (struct advk_pcie*,int,int ) ;

__attribute__((used)) static irqreturn_t advk_pcie_irq_handler(int irq, void *arg)
{
 struct advk_pcie *pcie = arg;
 u32 status;

 status = advk_readl(pcie, HOST_CTRL_INT_STATUS_REG);
 if (!(status & PCIE_IRQ_CORE_INT))
  return IRQ_NONE;

 advk_pcie_handle_int(pcie);


 advk_writel(pcie, PCIE_IRQ_CORE_INT, HOST_CTRL_INT_STATUS_REG);

 return IRQ_HANDLED;
}
