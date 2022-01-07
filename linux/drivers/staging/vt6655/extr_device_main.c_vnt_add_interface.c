
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int op_mode; int PortOffset; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int EOPNOTSUPP ;
 int HOSTCR_ADHOC ;
 int HOSTCR_AP ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_RCR ;
 int MACvRegBitsOff (int ,int ,int ) ;
 int MACvRegBitsOn (int ,int ,int ) ;



 int RCR_UNICAST ;

__attribute__((used)) static int vnt_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct vnt_private *priv = hw->priv;

 priv->vif = vif;

 switch (vif->type) {
 case 128:
  break;
 case 130:
  MACvRegBitsOff(priv->PortOffset, MAC_REG_RCR, RCR_UNICAST);

  MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_ADHOC);

  break;
 case 129:
  MACvRegBitsOff(priv->PortOffset, MAC_REG_RCR, RCR_UNICAST);

  MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_AP);

  break;
 default:
  return -EOPNOTSUPP;
 }

 priv->op_mode = vif->type;

 return 0;
}
