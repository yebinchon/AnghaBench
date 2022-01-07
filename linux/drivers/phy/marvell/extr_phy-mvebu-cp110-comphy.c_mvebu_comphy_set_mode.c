
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mvebu_comphy_lane {int mode; int submode; int port; int id; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int EINVAL ;
 int PHY_INTERFACE_MODE_1000BASEX ;
 int PHY_INTERFACE_MODE_SGMII ;
 int PHY_MODE_PCIE ;
 scalar_t__ mvebu_comphy_get_fw_mode (int ,int ,int,int) ;
 struct mvebu_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mvebu_comphy_set_mode(struct phy *phy,
     enum phy_mode mode, int submode)
{
 struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);

 if (submode == PHY_INTERFACE_MODE_1000BASEX)
  submode = PHY_INTERFACE_MODE_SGMII;

 if (mvebu_comphy_get_fw_mode(lane->id, lane->port, mode, submode) < 0)
  return -EINVAL;

 lane->mode = mode;
 lane->submode = submode;


 if (mode == PHY_MODE_PCIE && !lane->submode)
  lane->submode = 1;

 return 0;
}
