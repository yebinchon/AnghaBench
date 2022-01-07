
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns3 {TYPE_1__* otg_regs; int dev; } ;
struct TYPE_2__ {int state; int cmd; int sts; } ;


 int OTGCMD_DEV_BUS_DROP ;
 int OTGCMD_DEV_POWER_OFF ;
 int OTGCMD_HOST_BUS_DROP ;
 int OTGCMD_HOST_BUS_REQ ;
 int OTGCMD_HOST_POWER_OFF ;
 int OTGCMD_OTG_DIS ;
 int OTGSTATE_HOST_STATE_MASK ;
 int OTGSTS_XHCI_READY ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int readl_poll_timeout_atomic (int *,int,int,int,int) ;
 int writel (int,int *) ;

int cdns3_drd_switch_host(struct cdns3 *cdns, int on)
{
 int ret, val;
 u32 reg = OTGCMD_OTG_DIS;


 if (on) {
  writel(OTGCMD_HOST_BUS_REQ | reg, &cdns->otg_regs->cmd);

  dev_dbg(cdns->dev, "Waiting till Host mode is turned on\n");
  ret = readl_poll_timeout_atomic(&cdns->otg_regs->sts, val,
      val & OTGSTS_XHCI_READY,
      1, 100000);
  if (ret) {
   dev_err(cdns->dev, "timeout waiting for xhci_ready\n");
   return ret;
  }
 } else {
  writel(OTGCMD_HOST_BUS_DROP | OTGCMD_DEV_BUS_DROP |
         OTGCMD_DEV_POWER_OFF | OTGCMD_HOST_POWER_OFF,
         &cdns->otg_regs->cmd);

  readl_poll_timeout_atomic(&cdns->otg_regs->state, val,
       !(val & OTGSTATE_HOST_STATE_MASK),
       1, 2000000);
 }

 return 0;
}
