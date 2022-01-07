
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_phy {int port_id; int regmap_anatop; } ;


 int ANADIG_USB1_VBUS_DET_STAT ;
 int ANADIG_USB2_VBUS_DET_STAT ;
 unsigned int BM_ANADIG_USB1_VBUS_DET_STAT_VBUS_VALID ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static bool mxs_phy_get_vbus_status(struct mxs_phy *mxs_phy)
{
 unsigned int vbus_value = 0;

 if (!mxs_phy->regmap_anatop)
  return 0;

 if (mxs_phy->port_id == 0)
  regmap_read(mxs_phy->regmap_anatop,
   ANADIG_USB1_VBUS_DET_STAT,
   &vbus_value);
 else if (mxs_phy->port_id == 1)
  regmap_read(mxs_phy->regmap_anatop,
   ANADIG_USB2_VBUS_DET_STAT,
   &vbus_value);

 if (vbus_value & BM_ANADIG_USB1_VBUS_DET_STAT_VBUS_VALID)
  return 1;
 else
  return 0;
}
