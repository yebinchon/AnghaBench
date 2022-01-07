
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int op_mode; int PortOffset; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int HOSTCR_ADHOC ;
 int HOSTCR_AP ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_TCR ;
 int MAC_REG_TFTCTL ;
 int MACvRegBitsOff (int ,int ,int ) ;



 int NL80211_IFTYPE_UNSPECIFIED ;
 int TCR_AUTOBCNTX ;
 int TFTCTL_TSFCNTREN ;

__attribute__((used)) static void vnt_remove_interface(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;

 switch (vif->type) {
 case 128:
  break;
 case 130:
  MACvRegBitsOff(priv->PortOffset, MAC_REG_TCR, TCR_AUTOBCNTX);
  MACvRegBitsOff(priv->PortOffset,
          MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
  MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_ADHOC);
  break;
 case 129:
  MACvRegBitsOff(priv->PortOffset, MAC_REG_TCR, TCR_AUTOBCNTX);
  MACvRegBitsOff(priv->PortOffset,
          MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);
  MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_AP);
  break;
 default:
  break;
 }

 priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
}
