
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int bEnablePSMode; int bPWBitOn; int PortOffset; } ;


 int MAC_REG_PSCFG ;
 int MAC_REG_PSCTL ;
 int MAC_REG_TFTCTL ;
 int MACbPSWakeup (struct vnt_private*) ;
 int MACvRegBitsOff (int ,int ,int ) ;
 int MACvRegBitsOn (int ,int ,int ) ;
 int PSCFG_AUTOSLEEP ;
 int PSCTL_ALBCN ;
 int TFTCTL_HWUTSF ;

void
PSvDisablePowerSaving(
 struct vnt_private *priv
)
{

 MACbPSWakeup(priv);

 MACvRegBitsOff(priv->PortOffset, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);

 MACvRegBitsOff(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_HWUTSF);

 MACvRegBitsOn(priv->PortOffset, MAC_REG_PSCTL, PSCTL_ALBCN);

 priv->bEnablePSMode = 0;

 priv->bPWBitOn = 0;
}
