
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct ci_hdrc_msm {int hsic; scalar_t__ base; int secondary_phy; } ;
struct ci_hdrc {int phy; TYPE_3__* platdata; TYPE_1__* dev; } ;
struct TYPE_5__ {int edev; } ;
struct TYPE_6__ {TYPE_2__ vbus_extcon; } ;
struct TYPE_4__ {struct device* parent; } ;




 int HSPHY_SESS_VLD_CTRL ;
 int HS_PHY_AHB_MODE ;
 int HS_PHY_DIG_CLAMP_N ;
 int HS_PHY_GENCONFIG ;
 int HS_PHY_GENCONFIG_2 ;
 scalar_t__ HS_PHY_SEC_CTRL ;
 int HS_PHY_SESS_VLD_CTRL_EN ;
 int HS_PHY_TXFIFO_IDLE_FORCE_DIS ;
 int HS_PHY_ULPI_TX_PKT_EN_CLR_FIX ;
 int IS_ERR (int ) ;
 int OP_USBCMD ;
 int dev_dbg (struct device*,char*) ;
 struct ci_hdrc_msm* dev_get_drvdata (struct device*) ;
 int hw_phymode_configure (struct ci_hdrc*) ;
 int hw_write (struct ci_hdrc*,int ,int ,int ) ;
 int hw_write_id_reg (struct ci_hdrc*,int ,int,int) ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int ci_hdrc_msm_notify_event(struct ci_hdrc *ci, unsigned event)
{
 struct device *dev = ci->dev->parent;
 struct ci_hdrc_msm *msm_ci = dev_get_drvdata(dev);
 int ret;

 switch (event) {
 case 129:
  dev_dbg(dev, "CI_HDRC_CONTROLLER_RESET_EVENT received\n");

  hw_phymode_configure(ci);
  if (msm_ci->secondary_phy) {
   u32 val = readl_relaxed(msm_ci->base + HS_PHY_SEC_CTRL);
   val |= HS_PHY_DIG_CLAMP_N;
   writel_relaxed(val, msm_ci->base + HS_PHY_SEC_CTRL);
  }

  ret = phy_init(ci->phy);
  if (ret)
   return ret;

  ret = phy_power_on(ci->phy);
  if (ret) {
   phy_exit(ci->phy);
   return ret;
  }


  hw_write_id_reg(ci, HS_PHY_AHB_MODE, 0xffffffff, 0x8);


  hw_write_id_reg(ci, HS_PHY_GENCONFIG,
    HS_PHY_TXFIFO_IDLE_FORCE_DIS, 0);

  if (!msm_ci->hsic)
   hw_write_id_reg(ci, HS_PHY_GENCONFIG_2,
     HS_PHY_ULPI_TX_PKT_EN_CLR_FIX, 0);

  if (!IS_ERR(ci->platdata->vbus_extcon.edev)) {
   hw_write_id_reg(ci, HS_PHY_GENCONFIG_2,
     HS_PHY_SESS_VLD_CTRL_EN,
     HS_PHY_SESS_VLD_CTRL_EN);
   hw_write(ci, OP_USBCMD, HSPHY_SESS_VLD_CTRL,
     HSPHY_SESS_VLD_CTRL);

  }
  break;
 case 128:
  dev_dbg(dev, "CI_HDRC_CONTROLLER_STOPPED_EVENT received\n");
  phy_power_off(ci->phy);
  phy_exit(ci->phy);
  break;
 default:
  dev_dbg(dev, "unknown ci_hdrc event\n");
  break;
 }

 return 0;
}
