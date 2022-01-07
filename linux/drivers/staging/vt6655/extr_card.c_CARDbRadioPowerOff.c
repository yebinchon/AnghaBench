
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int bRadioOff; int byRFType; int PortOffset; int byLocalID; } ;


 int BBvSetDeepSleep (struct vnt_private*,int ) ;
 int HOSTCR_RXON ;
 int LED_ACTSET ;
 int MAC_REG_GPIOCTL0 ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_SOFTPWRCTL ;
 int MACvRegBitsOff (int ,int ,int ) ;
 int MACvRegBitsOn (int ,int ,int ) ;
 int MACvWordRegBitsOff (int ,int ,int ) ;
 int MACvWordRegBitsOn (int ,int ,int ) ;




 int SOFTPWRCTL_SWPE1 ;
 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 int SOFTPWRCTL_TXPEINV ;
 int pr_debug (char*) ;

void CARDbRadioPowerOff(struct vnt_private *priv)
{
 if (priv->bRadioOff)
  return;

 switch (priv->byRFType) {
 case 128:
  MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
       SOFTPWRCTL_TXPEINV);
  MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
      SOFTPWRCTL_SWPE1);
  break;

 case 131:
 case 129:
 case 130:
  MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
       SOFTPWRCTL_SWPE2);
  MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
       SOFTPWRCTL_SWPE3);
  break;
 }

 MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);

 BBvSetDeepSleep(priv, priv->byLocalID);

 priv->bRadioOff = 1;
 pr_debug("chester power off\n");
 MACvRegBitsOn(priv->PortOffset, MAC_REG_GPIOCTL0,
        LED_ACTSET);
}
