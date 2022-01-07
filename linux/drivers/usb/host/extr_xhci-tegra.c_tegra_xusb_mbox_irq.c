
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int MBOX_SMI_INTR_FW_HANG ;
 int XUSB_CFG_ARU_SMI_INTR ;
 int dev_err (int ,char*) ;
 int fpci_readl (struct tegra_xusb*,int ) ;
 int fpci_writel (struct tegra_xusb*,int,int ) ;

__attribute__((used)) static irqreturn_t tegra_xusb_mbox_irq(int irq, void *data)
{
 struct tegra_xusb *tegra = data;
 u32 value;


 value = fpci_readl(tegra, XUSB_CFG_ARU_SMI_INTR);
 fpci_writel(tegra, value, XUSB_CFG_ARU_SMI_INTR);

 if (value & MBOX_SMI_INTR_FW_HANG)
  dev_err(tegra->dev, "controller firmware hang\n");

 return IRQ_WAKE_THREAD;
}
