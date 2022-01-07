
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ version; } ;
struct rtl_phy {int rf_type; } ;
struct rtl_priv {TYPE_3__ rtlhal; struct rtl_phy phy; } ;
struct rtl_mac {int ht_enable; int bw_40; int mode; scalar_t__ opmode; } ;
struct rtl_hal {scalar_t__ current_bandtype; } ;
struct TYPE_4__ {int* rx_mask; } ;
struct TYPE_5__ {int cap; TYPE_1__ mcs; } ;
struct ieee80211_sta {int* supp_rates; TYPE_2__ ht_cap; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;


 scalar_t__ ARFR0 ;
 scalar_t__ BAND_ON_5G ;
 int COMP_RATR ;
 int DBG_DMESG ;
 int FW_CMD_RA_REFRESH_BG ;
 int FW_CMD_RA_REFRESH_N ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_SMPS_OFF ;
 int IEEE80211_SMPS_STATIC ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RF_1T1R ;
 int RF_1T2R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 int SG_RATE ;
 scalar_t__ VERSION_8192S_ACUT ;
 scalar_t__ VERSION_8192S_BCUT ;




 int get_rf_type (struct rtl_phy*) ;
 int rtl92s_phy_set_fw_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void rtl92se_update_hal_rate_table(struct ieee80211_hw *hw,
       struct ieee80211_sta *sta)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 u32 ratr_value;
 u8 ratr_index = 0;
 u8 nmode = mac->ht_enable;
 u8 mimo_ps = IEEE80211_SMPS_OFF;
 u16 shortgi_rate = 0;
 u32 tmp_ratr_value = 0;
 u8 curtxbw_40mhz = mac->bw_40;
 u8 curshortgi_40mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_40) ?
    1 : 0;
 u8 curshortgi_20mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20) ?
    1 : 0;
 enum wireless_mode wirelessmode = mac->mode;

 if (rtlhal->current_bandtype == BAND_ON_5G)
  ratr_value = sta->supp_rates[1] << 4;
 else
  ratr_value = sta->supp_rates[0];
 if (mac->opmode == NL80211_IFTYPE_ADHOC)
  ratr_value = 0xfff;
 ratr_value |= (sta->ht_cap.mcs.rx_mask[1] << 20 |
   sta->ht_cap.mcs.rx_mask[0] << 12);
 switch (wirelessmode) {
 case 131:
  ratr_value &= 0x0000000D;
  break;
 case 130:
  ratr_value &= 0x00000FF5;
  break;
 case 129:
 case 128:
  nmode = 1;
  if (mimo_ps == IEEE80211_SMPS_STATIC) {
   ratr_value &= 0x0007F005;
  } else {
   u32 ratr_mask;

   if (get_rf_type(rtlphy) == RF_1T2R ||
       get_rf_type(rtlphy) == RF_1T1R) {
    if (curtxbw_40mhz)
     ratr_mask = 0x000ff015;
    else
     ratr_mask = 0x000ff005;
   } else {
    if (curtxbw_40mhz)
     ratr_mask = 0x0f0ff015;
    else
     ratr_mask = 0x0f0ff005;
   }

   ratr_value &= ratr_mask;
  }
  break;
 default:
  if (rtlphy->rf_type == RF_1T2R)
   ratr_value &= 0x000ff0ff;
  else
   ratr_value &= 0x0f0ff0ff;

  break;
 }

 if (rtlpriv->rtlhal.version >= VERSION_8192S_BCUT)
  ratr_value &= 0x0FFFFFFF;
 else if (rtlpriv->rtlhal.version == VERSION_8192S_ACUT)
  ratr_value &= 0x0FFFFFF0;

 if (nmode && ((curtxbw_40mhz &&
    curshortgi_40mhz) || (!curtxbw_40mhz &&
       curshortgi_20mhz))) {

  ratr_value |= 0x10000000;
  tmp_ratr_value = (ratr_value >> 12);

  for (shortgi_rate = 15; shortgi_rate > 0; shortgi_rate--) {
   if ((1 << shortgi_rate) & tmp_ratr_value)
    break;
  }

  shortgi_rate = (shortgi_rate << 12) | (shortgi_rate << 8) |
      (shortgi_rate << 4) | (shortgi_rate);

  rtl_write_byte(rtlpriv, SG_RATE, shortgi_rate);
 }

 rtl_write_dword(rtlpriv, ARFR0 + ratr_index * 4, ratr_value);
 if (ratr_value & 0xfffff000)
  rtl92s_phy_set_fw_cmd(hw, FW_CMD_RA_REFRESH_N);
 else
  rtl92s_phy_set_fw_cmd(hw, FW_CMD_RA_REFRESH_BG);

 RT_TRACE(rtlpriv, COMP_RATR, DBG_DMESG, "%x\n",
   rtl_read_dword(rtlpriv, ARFR0));
}
