
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_typec_phy {scalar_t__ mode; int lock; } ;
struct phy {int dummy; } ;


 int MODE_DFP_USB ;
 scalar_t__ MODE_DISCONNECT ;
 int MODE_UFP_USB ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rockchip_typec_phy* phy_get_drvdata (struct phy*) ;
 int tcphy_cfg_usb3_to_usb2_only (struct rockchip_typec_phy*,int) ;
 int tcphy_phy_deinit (struct rockchip_typec_phy*) ;

__attribute__((used)) static int rockchip_usb3_phy_power_off(struct phy *phy)
{
 struct rockchip_typec_phy *tcphy = phy_get_drvdata(phy);

 mutex_lock(&tcphy->lock);
 tcphy_cfg_usb3_to_usb2_only(tcphy, 0);

 if (tcphy->mode == MODE_DISCONNECT)
  goto unlock;

 tcphy->mode &= ~(MODE_UFP_USB | MODE_DFP_USB);
 if (tcphy->mode == MODE_DISCONNECT)
  tcphy_phy_deinit(tcphy);

unlock:
 mutex_unlock(&tcphy->lock);
 return 0;
}
