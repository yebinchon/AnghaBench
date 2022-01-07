
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_phy {void* rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int macphymode; void* current_bandtype; void* bandset; int interfaceindex; int version; } ;
struct ieee80211_hw {int dummy; } ;


 void* BAND_ON_2_4G ;
 void* BAND_ON_5G ;
 void* BAND_ON_BOTH ;


 void* RF_1T1R ;
 void* RF_2T2R ;
 int RF_TYPE_1T1R ;
 int RF_TYPE_2T2R ;

 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92d_phy_config_macphymode_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 switch (rtlhal->macphymode) {
 case 129:
  rtlphy->rf_type = RF_2T2R;
  rtlhal->version |= RF_TYPE_2T2R;
  rtlhal->bandset = BAND_ON_BOTH;
  rtlhal->current_bandtype = BAND_ON_2_4G;
  break;

 case 128:
  rtlphy->rf_type = RF_2T2R;
  rtlhal->version |= RF_TYPE_2T2R;
  rtlhal->bandset = BAND_ON_BOTH;
  rtlhal->current_bandtype = BAND_ON_2_4G;
  break;

 case 130:
  rtlphy->rf_type = RF_1T1R;
  rtlhal->version &= RF_TYPE_1T1R;

  if (rtlhal->interfaceindex == 0) {
   rtlhal->bandset = BAND_ON_5G;
   rtlhal->current_bandtype = BAND_ON_5G;
  } else {
   rtlhal->bandset = BAND_ON_2_4G;
   rtlhal->current_bandtype = BAND_ON_2_4G;
  }
  break;
 default:
  break;
 }
}
