
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int rf_type; int current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;


 int HT_CHANNEL_WIDTH_80 ;
 int RATEID_IDX_B ;
 int RATEID_IDX_BG ;
 int RATEID_IDX_BGN_20M_1SS_BN ;
 int RATEID_IDX_BGN_20M_2SS_BN ;
 int RATEID_IDX_BGN_40M_1SS ;
 int RATEID_IDX_BGN_40M_2SS ;
 int RATEID_IDX_G ;
 int RATEID_IDX_GN_N1SS ;
 int RATEID_IDX_GN_N2SS ;
 int RATEID_IDX_MIX1 ;
 int RATEID_IDX_MIX2 ;
 int RATEID_IDX_VHT_1SS ;
 int RATEID_IDX_VHT_2SS ;
 int RF_1T1R ;
 int WIRELESS_MODE_AC_24G ;
 int WIRELESS_MODE_B ;
 int WIRELESS_MODE_G ;
 int WIRELESS_MODE_N_24G ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u8 rtl_mrate_idx_to_arfr_id(struct ieee80211_hw *hw, u8 rate_index,
       enum wireless_mode wirelessmode)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 ret = 0;

 switch (rate_index) {
 case 128:
  if (rtlphy->rf_type == RF_1T1R)
   ret = RATEID_IDX_BGN_40M_1SS;
  else
   ret = RATEID_IDX_BGN_40M_2SS;
  ; break;
 case 131:
 case 129:
  if (rtlphy->rf_type == RF_1T1R)
   ret = RATEID_IDX_GN_N1SS;
  else
   ret = RATEID_IDX_GN_N2SS;
  ; break;
 case 130:
  if (rtlphy->rf_type == RF_1T1R)
   ret = RATEID_IDX_BGN_20M_1SS_BN;
  else
   ret = RATEID_IDX_BGN_20M_2SS_BN;
  ; break;
 case 133:
  ret = RATEID_IDX_BG;
  break;
 case 134:
  ret = RATEID_IDX_G;
  break;
 case 135:
  ret = RATEID_IDX_B;
  break;
 case 132:
  if (wirelessmode == WIRELESS_MODE_B ||
      wirelessmode == WIRELESS_MODE_G ||
      wirelessmode == WIRELESS_MODE_N_24G ||
      wirelessmode == WIRELESS_MODE_AC_24G)
   ret = RATEID_IDX_BG;
  else
   ret = RATEID_IDX_G;
  break;
 case 136:
  if (rtlphy->rf_type == RF_1T1R)
   ret = RATEID_IDX_VHT_1SS;
  else
   ret = RATEID_IDX_VHT_2SS;
  break;
 case 137:
  if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_80) {
   if (rtlphy->rf_type == RF_1T1R)
    ret = RATEID_IDX_VHT_1SS;
   else
    ret = RATEID_IDX_VHT_2SS;
  } else {
   if (rtlphy->rf_type == RF_1T1R)
    ret = RATEID_IDX_MIX1;
   else
    ret = RATEID_IDX_MIX2;
  }
  break;
 default:
  ret = RATEID_IDX_BGN_40M_2SS;
  break;
 }
 return ret;
}
