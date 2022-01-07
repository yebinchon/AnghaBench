
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_mbox_msg {scalar_t__ cmd; } ;
struct tegra_xusb {int dev; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 scalar_t__ MBOX_CMD_ACK ;
 scalar_t__ MBOX_CMD_NAK ;
 int MBOX_DEST_FALC ;
 int MBOX_INT_EN ;
 int MBOX_OWNER_NONE ;
 int MBOX_OWNER_SW ;
 int XUSB_CFG_ARU_MBOX_CMD ;
 int XUSB_CFG_ARU_MBOX_DATA_IN ;
 int XUSB_CFG_ARU_MBOX_OWNER ;
 int dev_err (int ,char*) ;
 int fpci_readl (struct tegra_xusb*,int ) ;
 int fpci_writel (struct tegra_xusb*,int,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int tegra_xusb_mbox_pack (struct tegra_xusb_mbox_msg const*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_xusb_mbox_send(struct tegra_xusb *tegra,
    const struct tegra_xusb_mbox_msg *msg)
{
 bool wait_for_idle = 0;
 u32 value;





 if (!(msg->cmd == MBOX_CMD_ACK || msg->cmd == MBOX_CMD_NAK)) {
  value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_OWNER);
  if (value != MBOX_OWNER_NONE) {
   dev_err(tegra->dev, "mailbox is busy\n");
   return -EBUSY;
  }

  fpci_writel(tegra, MBOX_OWNER_SW, XUSB_CFG_ARU_MBOX_OWNER);

  value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_OWNER);
  if (value != MBOX_OWNER_SW) {
   dev_err(tegra->dev, "failed to acquire mailbox\n");
   return -EBUSY;
  }

  wait_for_idle = 1;
 }

 value = tegra_xusb_mbox_pack(msg);
 fpci_writel(tegra, value, XUSB_CFG_ARU_MBOX_DATA_IN);

 value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_CMD);
 value |= MBOX_INT_EN | MBOX_DEST_FALC;
 fpci_writel(tegra, value, XUSB_CFG_ARU_MBOX_CMD);

 if (wait_for_idle) {
  unsigned long timeout = jiffies + msecs_to_jiffies(250);

  while (time_before(jiffies, timeout)) {
   value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_OWNER);
   if (value == MBOX_OWNER_NONE)
    break;

   usleep_range(10, 20);
  }

  if (time_after(jiffies, timeout))
   value = fpci_readl(tegra, XUSB_CFG_ARU_MBOX_OWNER);

  if (value != MBOX_OWNER_NONE)
   return -ETIMEDOUT;
 }

 return 0;
}
