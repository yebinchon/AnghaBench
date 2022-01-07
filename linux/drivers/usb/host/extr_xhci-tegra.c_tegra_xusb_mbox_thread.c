
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_mbox_msg {int cmd; } ;
struct tegra_xusb {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MBOX_DEST_SMI ;
 int MBOX_OWNER_NONE ;
 int XUSB_CFG_ARU_MBOX_CMD ;
 int XUSB_CFG_ARU_MBOX_DATA_OUT ;
 int XUSB_CFG_ARU_MBOX_OWNER ;
 int fpci_readl (struct tegra_xusb*,int ) ;
 int fpci_writel (struct tegra_xusb*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tegra_xusb_mbox_cmd_requires_ack (int ) ;
 int tegra_xusb_mbox_handle (struct tegra_xusb*,struct tegra_xusb_mbox_msg*) ;
 int tegra_xusb_mbox_unpack (struct tegra_xusb_mbox_msg*,int ) ;

__attribute__((used)) static irqreturn_t tegra_xusb_mbox_thread(int irq, void *data)
{
 struct tegra_xusb *tegra = data;
 struct tegra_xusb_mbox_msg msg;
 u32 value;

 mutex_lock(&tegra->lock);

 value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_DATA_OUT);
 tegra_xusb_mbox_unpack(&msg, value);

 value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_CMD);
 value &= ~MBOX_DEST_SMI;
 fpci_writel(tegra, value, XUSB_CFG_ARU_MBOX_CMD);


 if (!tegra_xusb_mbox_cmd_requires_ack(msg.cmd))
  fpci_writel(tegra, MBOX_OWNER_NONE, XUSB_CFG_ARU_MBOX_OWNER);

 tegra_xusb_mbox_handle(tegra, &msg);

 mutex_unlock(&tegra->lock);
 return IRQ_HANDLED;
}
