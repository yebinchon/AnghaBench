
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct mvebu_comphy_priv {int dev; int cp_phys; } ;
struct mvebu_comphy_lane {int mode; int id; int submode; int port; struct mvebu_comphy_priv* priv; } ;


 int COMPHY_FW_NOT_SUPPORTED ;
 int COMPHY_FW_PARAM (int,int ) ;
 int COMPHY_FW_PARAM_ETH (int,int ,int) ;
 int COMPHY_FW_PARAM_PCIE (int,int ,int ) ;
 int COMPHY_FW_SPEED_103125 ;
 int COMPHY_FW_SPEED_1250 ;
 int COMPHY_FW_SPEED_3125 ;
 int COMPHY_SIP_POWER_ON ;
 int ENOTSUPP ;
 int dev_dbg (int ,char*,int ,...) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*,int ,int,int) ;
 int mvebu_comphy_get_fw_mode (int ,int ,int,int ) ;
 int mvebu_comphy_power_on_legacy (struct phy*) ;
 int mvebu_comphy_smc (int ,int ,int ,int ) ;
 struct mvebu_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mvebu_comphy_power_on(struct phy *phy)
{
 struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 struct mvebu_comphy_priv *priv = lane->priv;
 int fw_mode, fw_speed;
 u32 fw_param = 0;
 int ret;

 fw_mode = mvebu_comphy_get_fw_mode(lane->id, lane->port,
        lane->mode, lane->submode);
 if (fw_mode < 0)
  goto try_legacy;


 switch (lane->mode) {
 case 132:
  switch (lane->submode) {
  case 134:
   dev_dbg(priv->dev, "set lane %d to RXAUI mode\n",
    lane->id);
   fw_speed = 0;
   break;
  case 133:
   dev_dbg(priv->dev, "set lane %d to 1000BASE-X mode\n",
    lane->id);
   fw_speed = COMPHY_FW_SPEED_1250;
   break;
  case 135:
   dev_dbg(priv->dev, "set lane %d to 2500BASE-X mode\n",
    lane->id);
   fw_speed = COMPHY_FW_SPEED_3125;
   break;
  case 136:
   dev_dbg(priv->dev, "set lane %d to 10G-KR mode\n",
    lane->id);
   fw_speed = COMPHY_FW_SPEED_103125;
   break;
  default:
   dev_err(priv->dev, "unsupported Ethernet mode (%d)\n",
    lane->submode);
   return -ENOTSUPP;
  }
  fw_param = COMPHY_FW_PARAM_ETH(fw_mode, lane->port, fw_speed);
  break;
 case 128:
 case 129:
  dev_dbg(priv->dev, "set lane %d to USB3 mode\n", lane->id);
  fw_param = COMPHY_FW_PARAM(fw_mode, lane->port);
  break;
 case 130:
  dev_dbg(priv->dev, "set lane %d to SATA mode\n", lane->id);
  fw_param = COMPHY_FW_PARAM(fw_mode, lane->port);
  break;
 case 131:
  dev_dbg(priv->dev, "set lane %d to PCIe mode (x%d)\n", lane->id,
   lane->submode);
  fw_param = COMPHY_FW_PARAM_PCIE(fw_mode, lane->port,
      lane->submode);
  break;
 default:
  dev_err(priv->dev, "unsupported PHY mode (%d)\n", lane->mode);
  return -ENOTSUPP;
 }

 ret = mvebu_comphy_smc(COMPHY_SIP_POWER_ON, priv->cp_phys, lane->id,
          fw_param);
 if (!ret)
  return ret;

 if (ret == COMPHY_FW_NOT_SUPPORTED)
  dev_err(priv->dev,
   "unsupported SMC call, try updating your firmware\n");

 dev_warn(priv->dev,
   "Firmware could not configure PHY %d with mode %d (ret: %d), trying legacy method\n",
   lane->id, lane->mode, ret);

try_legacy:

 return mvebu_comphy_power_on_legacy(phy);
}
