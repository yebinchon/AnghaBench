
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {scalar_t__ current_tsf; } ;


 int MAC_REG_TFTCTL ;
 int TFTCTL_TSFCNTRST ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;

bool vnt_clear_current_tsf(struct vnt_private *priv)
{
 vnt_mac_reg_bits_on(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);

 priv->current_tsf = 0;

 return 1;
}
