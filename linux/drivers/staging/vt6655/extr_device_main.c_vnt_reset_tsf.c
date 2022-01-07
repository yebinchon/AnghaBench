
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {scalar_t__ PortOffset; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 scalar_t__ MAC_REG_TFTCTL ;
 int TFTCTL_TSFCNTRST ;
 int VNSvOutPortB (scalar_t__,int ) ;

__attribute__((used)) static void vnt_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;


 VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);
}
