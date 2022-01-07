
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct keystone_pcie {scalar_t__ is_am6; TYPE_1__* pci; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device* dev; } ;


 int AM6_ERR_AER ;
 int ERR_AER ;
 int ERR_AXI ;
 int ERR_CORR ;
 int ERR_FATAL ;
 int ERR_IRQ_STATUS ;
 int ERR_NONFATAL ;
 int ERR_SYS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int ks_pcie_app_readl (struct keystone_pcie*,int ) ;
 int ks_pcie_app_writel (struct keystone_pcie*,int ,int) ;

__attribute__((used)) static irqreturn_t ks_pcie_handle_error_irq(struct keystone_pcie *ks_pcie)
{
 u32 reg;
 struct device *dev = ks_pcie->pci->dev;

 reg = ks_pcie_app_readl(ks_pcie, ERR_IRQ_STATUS);
 if (!reg)
  return IRQ_NONE;

 if (reg & ERR_SYS)
  dev_err(dev, "System Error\n");

 if (reg & ERR_FATAL)
  dev_err(dev, "Fatal Error\n");

 if (reg & ERR_NONFATAL)
  dev_dbg(dev, "Non Fatal Error\n");

 if (reg & ERR_CORR)
  dev_dbg(dev, "Correctable Error\n");

 if (!ks_pcie->is_am6 && (reg & ERR_AXI))
  dev_err(dev, "AXI tag lookup fatal Error\n");

 if (reg & ERR_AER || (ks_pcie->is_am6 && (reg & AM6_ERR_AER)))
  dev_err(dev, "ECRC Error\n");

 ks_pcie_app_writel(ks_pcie, ERR_IRQ_STATUS, reg);

 return IRQ_HANDLED;
}
