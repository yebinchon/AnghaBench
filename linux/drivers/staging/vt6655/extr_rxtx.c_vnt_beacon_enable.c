
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {scalar_t__ PortOffset; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int beacon_int; } ;


 int CARDbSetBeaconPeriod (struct vnt_private*,int ) ;
 int CARDvSetFirstNextTBTT (struct vnt_private*,int ) ;
 scalar_t__ MAC_REG_TFTCTL ;
 int TFTCTL_TSFCNTREN ;
 int TFTCTL_TSFCNTRST ;
 int VNSvOutPortB (scalar_t__,int ) ;
 int vnt_beacon_make (struct vnt_private*,struct ieee80211_vif*) ;

int vnt_beacon_enable(struct vnt_private *priv, struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *conf)
{
 VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);

 VNSvOutPortB(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

 CARDvSetFirstNextTBTT(priv, conf->beacon_int);

 CARDbSetBeaconPeriod(priv, conf->beacon_int);

 return vnt_beacon_make(priv, vif);
}
