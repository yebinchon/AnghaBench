
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct vnt_private {int * ofdm_pwr_tbl; int * ofdm_a_pwr_tbl; int * cck_pwr_tbl; int cck_pwr; } ;


 scalar_t__ CB_MAX_CHANNEL_24G ;
 int EINVAL ;
 int vnt_rf_set_txpower (struct vnt_private*,int ,scalar_t__) ;

int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel)
{
 u8 power = priv->cck_pwr;

 if (channel == 0)
  return -EINVAL;

 switch (rate) {
 case 136:
 case 134:
 case 130:
 case 139:
  channel--;

  if (channel < sizeof(priv->cck_pwr_tbl))
   power = priv->cck_pwr_tbl[channel];
  break;
 case 129:
 case 128:
 case 138:
 case 137:
 case 135:
 case 133:
 case 132:
 case 131:
  if (channel > CB_MAX_CHANNEL_24G)
   power = priv->ofdm_a_pwr_tbl[channel - 15];
  else
   power = priv->ofdm_pwr_tbl[channel - 1];
  break;
 }

 return vnt_rf_set_txpower(priv, power, rate);
}
