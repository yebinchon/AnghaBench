
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vnt_private {int current_aid; scalar_t__ op_mode; TYPE_1__* usb; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int C_PWBT ;
 int MAC_REG_AIDATIM ;
 int MAC_REG_PSCFG ;
 int MAC_REG_PSCTL ;
 int MAC_REG_PWBT ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int PSCFG_AUTOSLEEP ;
 int PSCTL_ALBCN ;
 int PSCTL_GO2DOZE ;
 int PSCTL_LNBCN ;
 int PSCTL_PSEN ;
 int dev_dbg (int *,char*) ;
 int vnt_mac_reg_bits_off (struct vnt_private*,int ,int ) ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;
 int vnt_mac_write_word (struct vnt_private*,int ,int) ;

void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
{
 u16 aid = priv->current_aid | BIT(14) | BIT(15);


 vnt_mac_write_word(priv, MAC_REG_PWBT, C_PWBT);

 if (priv->op_mode != NL80211_IFTYPE_ADHOC)

  vnt_mac_write_word(priv, MAC_REG_AIDATIM, aid);





 vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_PSEN);


 vnt_mac_reg_bits_on(priv, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);




 vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_GO2DOZE);

 if (listen_interval >= 2) {

  vnt_mac_reg_bits_off(priv, MAC_REG_PSCTL, PSCTL_ALBCN);


  vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_LNBCN);
 } else {

  vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
 }

 dev_dbg(&priv->usb->dev, "PS:Power Saving Mode Enable...\n");
}
