
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int rf_type; } ;


 int GPIO3_INTMD ;
 int HOSTCR_RXON ;
 int MAC_REG_GPIOCTL1 ;
 int MAC_REG_HOSTCR ;
 int MAC_REG_SOFTPWRCTL ;






 int SOFTPWRCTL_SWPE2 ;
 int SOFTPWRCTL_SWPE3 ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;
 int vnt_set_deep_sleep (struct vnt_private*) ;

int vnt_radio_power_off(struct vnt_private *priv)
{
 int ret = 0;

 switch (priv->rf_type) {
 case 132:
 case 131:
 case 133:
 case 130:
 case 129:
 case 128:
  ret = vnt_mac_reg_bits_off(priv, MAC_REG_SOFTPWRCTL,
     (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
  break;
 }

 if (ret)
  goto end;

 ret = vnt_mac_reg_bits_off(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
 if (ret)
  goto end;

 ret = vnt_set_deep_sleep(priv);
 if (ret)
  goto end;

 ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);

end:
 return ret;
}
