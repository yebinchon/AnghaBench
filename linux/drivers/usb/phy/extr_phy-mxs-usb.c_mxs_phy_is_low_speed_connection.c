
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_phy {int port_id; int regmap_anatop; } ;


 unsigned int ANADIG_USB1_MISC ;
 unsigned int ANADIG_USB2_MISC ;
 unsigned int BM_ANADIG_USB1_MISC_RX_VMIN_FS ;
 unsigned int BM_ANADIG_USB1_MISC_RX_VPIN_FS ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static bool mxs_phy_is_low_speed_connection(struct mxs_phy *mxs_phy)
{
 unsigned int line_state;

 unsigned int dp_bit = BM_ANADIG_USB1_MISC_RX_VPIN_FS,
       dm_bit = BM_ANADIG_USB1_MISC_RX_VMIN_FS;
 unsigned int reg = ANADIG_USB1_MISC;


 if (!mxs_phy->regmap_anatop)
  return 0;

 if (mxs_phy->port_id == 0)
  reg = ANADIG_USB1_MISC;
 else if (mxs_phy->port_id == 1)
  reg = ANADIG_USB2_MISC;

 regmap_read(mxs_phy->regmap_anatop, reg, &line_state);

 if ((line_state & (dp_bit | dm_bit)) == dm_bit)
  return 1;
 else
  return 0;
}
