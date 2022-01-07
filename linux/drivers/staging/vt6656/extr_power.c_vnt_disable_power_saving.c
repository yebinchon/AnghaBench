
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int MAC_REG_PSCFG ;
 int MAC_REG_PSCTL ;
 int MESSAGE_TYPE_DISABLE_PS ;
 int PSCFG_AUTOSLEEP ;
 int PSCTL_ALBCN ;
 int vnt_control_out (struct vnt_private*,int ,int ,int ,int ,int *) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;

void vnt_disable_power_saving(struct vnt_private *priv)
{

 vnt_control_out(priv, MESSAGE_TYPE_DISABLE_PS, 0,
   0, 0, ((void*)0));


 vnt_mac_reg_bits_off(priv, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);


 vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
}
