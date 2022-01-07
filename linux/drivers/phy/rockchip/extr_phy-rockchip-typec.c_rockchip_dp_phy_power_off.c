
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_typec_phy {scalar_t__ mode; int lock; scalar_t__ base; } ;
struct phy {int dummy; } ;


 scalar_t__ DP_MODE_CTL ;
 int DP_MODE_ENTER_A2 ;
 scalar_t__ MODE_DFP_DP ;
 scalar_t__ MODE_DISCONNECT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rockchip_typec_phy* phy_get_drvdata (struct phy*) ;
 int tcphy_phy_deinit (struct rockchip_typec_phy*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int rockchip_dp_phy_power_off(struct phy *phy)
{
 struct rockchip_typec_phy *tcphy = phy_get_drvdata(phy);

 mutex_lock(&tcphy->lock);

 if (tcphy->mode == MODE_DISCONNECT)
  goto unlock;

 tcphy->mode &= ~MODE_DFP_DP;

 writel(DP_MODE_ENTER_A2, tcphy->base + DP_MODE_CTL);

 if (tcphy->mode == MODE_DISCONNECT)
  tcphy_phy_deinit(tcphy);

unlock:
 mutex_unlock(&tcphy->lock);
 return 0;
}
