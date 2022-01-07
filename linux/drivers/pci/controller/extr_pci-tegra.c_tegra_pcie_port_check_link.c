
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pcie_port {scalar_t__ base; int index; TYPE_1__* pcie; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ RP_LINK_CONTROL_STATUS ;
 unsigned long RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE ;
 scalar_t__ RP_PRIV_MISC ;
 unsigned long RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT ;
 unsigned long RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT ;
 scalar_t__ RP_VEND_XP ;
 unsigned long RP_VEND_XP_DL_UP ;
 unsigned int TEGRA_PCIE_LINKUP_TIMEOUT ;
 int dev_dbg (struct device*,char*,int ) ;
 unsigned long readl (scalar_t__) ;
 int tegra_pcie_port_reset (struct tegra_pcie_port*) ;
 int usleep_range (int,int) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static bool tegra_pcie_port_check_link(struct tegra_pcie_port *port)
{
 struct device *dev = port->pcie->dev;
 unsigned int retries = 3;
 unsigned long value;


 value = readl(port->base + RP_PRIV_MISC);
 value &= ~RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT;
 value |= RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT;
 writel(value, port->base + RP_PRIV_MISC);

 do {
  unsigned int timeout = TEGRA_PCIE_LINKUP_TIMEOUT;

  do {
   value = readl(port->base + RP_VEND_XP);

   if (value & RP_VEND_XP_DL_UP)
    break;

   usleep_range(1000, 2000);
  } while (--timeout);

  if (!timeout) {
   dev_dbg(dev, "link %u down, retrying\n", port->index);
   goto retry;
  }

  timeout = TEGRA_PCIE_LINKUP_TIMEOUT;

  do {
   value = readl(port->base + RP_LINK_CONTROL_STATUS);

   if (value & RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE)
    return 1;

   usleep_range(1000, 2000);
  } while (--timeout);

retry:
  tegra_pcie_port_reset(port);
 } while (--retries);

 return 0;
}
