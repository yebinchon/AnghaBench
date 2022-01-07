
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bus_width; } ;
struct phy {TYPE_1__ attrs; } ;
struct mvebu_a3700_comphy_lane {int mode; int dev; int id; int port; int submode; } ;


 int COMPHY_FW_MODE (int) ;
 int COMPHY_FW_NET (int,int ,int ) ;
 int COMPHY_FW_NOT_SUPPORTED ;
 int COMPHY_FW_PCIE (int,int ,int ,int ) ;
 int COMPHY_FW_SPEED_1_25G ;
 int COMPHY_FW_SPEED_3_125G ;
 int COMPHY_FW_SPEED_5G ;
 int COMPHY_SIP_POWER_ON ;
 int ENOTSUPP ;






 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,...) ;
 int mvebu_a3700_comphy_get_fw_mode (int ,int ,int,int ) ;
 int mvebu_a3700_comphy_smc (int ,int ,int ) ;
 struct mvebu_a3700_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mvebu_a3700_comphy_power_on(struct phy *phy)
{
 struct mvebu_a3700_comphy_lane *lane = phy_get_drvdata(phy);
 u32 fw_param;
 int fw_mode;
 int ret;

 fw_mode = mvebu_a3700_comphy_get_fw_mode(lane->id, lane->port,
       lane->mode, lane->submode);
 if (fw_mode < 0) {
  dev_err(lane->dev, "invalid COMPHY mode\n");
  return fw_mode;
 }

 switch (lane->mode) {
 case 128:
  dev_dbg(lane->dev, "set lane %d to USB3 host mode\n", lane->id);
  fw_param = COMPHY_FW_MODE(fw_mode);
  break;
 case 129:
  dev_dbg(lane->dev, "set lane %d to SATA mode\n", lane->id);
  fw_param = COMPHY_FW_MODE(fw_mode);
  break;
 case 131:
  switch (lane->submode) {
  case 132:
   dev_dbg(lane->dev, "set lane %d to SGMII mode\n",
    lane->id);
   fw_param = COMPHY_FW_NET(fw_mode, lane->port,
       COMPHY_FW_SPEED_1_25G);
   break;
  case 133:
   dev_dbg(lane->dev, "set lane %d to HS SGMII mode\n",
    lane->id);
   fw_param = COMPHY_FW_NET(fw_mode, lane->port,
       COMPHY_FW_SPEED_3_125G);
   break;
  default:
   dev_err(lane->dev, "unsupported PHY submode (%d)\n",
    lane->submode);
   return -ENOTSUPP;
  }
  break;
 case 130:
  dev_dbg(lane->dev, "set lane %d to PCIe mode\n", lane->id);
  fw_param = COMPHY_FW_PCIE(fw_mode, lane->port,
       COMPHY_FW_SPEED_5G,
       phy->attrs.bus_width);
  break;
 default:
  dev_err(lane->dev, "unsupported PHY mode (%d)\n", lane->mode);
  return -ENOTSUPP;
 }

 ret = mvebu_a3700_comphy_smc(COMPHY_SIP_POWER_ON, lane->id, fw_param);
 if (ret == COMPHY_FW_NOT_SUPPORTED)
  dev_err(lane->dev,
   "unsupported SMC call, try updating your firmware\n");

 return ret;
}
