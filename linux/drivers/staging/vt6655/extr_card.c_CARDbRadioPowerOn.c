
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int bRadioOff; int byRFType; int PortOffset; int byLocalID; scalar_t__ bRadioControlOff; scalar_t__ bHWRadioOff; } ;


 int BBvExitDeepSleep (struct vnt_private*,int ) ;
 int HOSTCR_RXON ;
 int LED_ACTSET ;
 int MAC_REG_GPIOCTL0 ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_SOFTPWRCTL ;
 int MACvRegBitsOff (int ,int ,int ) ;
 int MACvRegBitsOn (int ,int ,int ) ;
 int MACvWordRegBitsOff (int ,int ,int ) ;
 int MACvWordRegBitsOn (int ,int ,int) ;




 int SOFTPWRCTL_SWPE1 ;
 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 int SOFTPWRCTL_TXPEINV ;
 int pr_debug (char*) ;

bool CARDbRadioPowerOn(struct vnt_private *priv)
{
 bool bResult = 1;

 pr_debug("chester power on\n");
 if (priv->bRadioControlOff) {
  if (priv->bHWRadioOff)
   pr_debug("chester bHWRadioOff\n");
  if (priv->bRadioControlOff)
   pr_debug("chester bRadioControlOff\n");
  return 0; }

 if (!priv->bRadioOff) {
  pr_debug("chester pbRadioOff\n");
  return 1; }

 BBvExitDeepSleep(priv, priv->byLocalID);

 MACvRegBitsOn(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);

 switch (priv->byRFType) {
 case 128:
  MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
      SOFTPWRCTL_TXPEINV);
  MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
       SOFTPWRCTL_SWPE1);
  break;

 case 131:
 case 129:
 case 130:
  MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
      (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
  break;
 }

 priv->bRadioOff = 0;
 pr_debug("chester power on\n");
 MACvRegBitsOff(priv->PortOffset, MAC_REG_GPIOCTL0,
         LED_ACTSET);
 return bResult;
}
