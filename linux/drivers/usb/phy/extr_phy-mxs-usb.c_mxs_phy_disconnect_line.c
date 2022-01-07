
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_phy {int regmap_anatop; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; } ;


 int MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS ;
 int __mxs_phy_disconnect_line (struct mxs_phy*,int) ;
 int mxs_phy_get_vbus_status (struct mxs_phy*) ;
 int mxs_phy_is_otg_host (struct mxs_phy*) ;

__attribute__((used)) static void mxs_phy_disconnect_line(struct mxs_phy *mxs_phy, bool on)
{
 bool vbus_is_on = 0;


 if (!(mxs_phy->data->flags & MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS))
  return;


 if (!mxs_phy->regmap_anatop)
  return;

 vbus_is_on = mxs_phy_get_vbus_status(mxs_phy);

 if (on && !vbus_is_on && !mxs_phy_is_otg_host(mxs_phy))
  __mxs_phy_disconnect_line(mxs_phy, 1);
 else
  __mxs_phy_disconnect_line(mxs_phy, 0);

}
