
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vnt_private {int current_aid; scalar_t__ op_mode; int bEnablePSMode; int bPWBitOn; scalar_t__ PortOffset; } ;
struct TYPE_2__ {int wCurrATIMWindow; } ;


 int BIT (int) ;
 int C_PWBT ;
 scalar_t__ MAC_REG_AIDATIM ;
 int MAC_REG_PSCFG ;
 int MAC_REG_PSCTL ;
 scalar_t__ MAC_REG_PWBT ;
 int MAC_REG_TFTCTL ;
 int MACvRegBitsOff (scalar_t__,int ,int ) ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int MACvWriteATIMW (scalar_t__,int ) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int PSCFG_AUTOSLEEP ;
 int PSCTL_ALBCN ;
 int PSCTL_LNBCN ;
 int PSCTL_PSEN ;
 int TFTCTL_HWUTSF ;
 int VNSvOutPortW (scalar_t__,int) ;
 TYPE_1__* pMgmt ;
 int pr_debug (char*) ;

void PSvEnablePowerSaving(struct vnt_private *priv,
     unsigned short wListenInterval)
{
 u16 wAID = priv->current_aid | BIT(14) | BIT(15);


 VNSvOutPortW(priv->PortOffset + MAC_REG_PWBT, C_PWBT);
 if (priv->op_mode != NL80211_IFTYPE_ADHOC) {

  VNSvOutPortW(priv->PortOffset + MAC_REG_AIDATIM, wAID);
 } else {




 }

 MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);

 MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);

 if (wListenInterval >= 2) {

  MACvRegBitsOff(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);

  MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_LNBCN);
 } else {

  MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);
 }


 MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_PSEN);
 priv->bEnablePSMode = 1;

 priv->bPWBitOn = 1;
 pr_debug("PS:Power Saving Mode Enable...\n");
}
