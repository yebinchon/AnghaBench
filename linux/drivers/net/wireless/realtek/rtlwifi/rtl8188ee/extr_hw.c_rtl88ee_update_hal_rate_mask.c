
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_sta_info {int wireless_mode; int ratr_index; } ;
struct rtl_phy {int rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_mac {scalar_t__ opmode; int bw_40; } ;
struct rtl_hal {scalar_t__ current_bandtype; } ;
struct TYPE_3__ {int* rx_mask; } ;
struct TYPE_4__ {int cap; TYPE_1__ mcs; } ;
struct ieee80211_sta {int aid; int* supp_rates; TYPE_2__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;


 scalar_t__ BAND_ON_5G ;
 int BIT (int) ;
 int COMP_RATR ;
 int DBG_DMESG ;
 int H2C_88E_RA_MASK ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RATR_INX_WIRELESS_B ;
 int RATR_INX_WIRELESS_GB ;
 int RATR_INX_WIRELESS_NGB ;
 int RF_1T1R ;
 int RF_1T2R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;




 int _rtl88ee_set_bcn_ctrl_reg (struct ieee80211_hw*,int ,int ) ;
 int rtl88e_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl88ee_update_hal_rate_mask(struct ieee80211_hw *hw,
  struct ieee80211_sta *sta, u8 rssi_level, bool update_bw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_sta_info *sta_entry = ((void*)0);
 u32 ratr_bitmap;
 u8 ratr_index;
 u8 curtxbw_40mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40)
    ? 1 : 0;
 u8 curshortgi_40mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_40) ?
    1 : 0;
 u8 curshortgi_20mhz = (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20) ?
    1 : 0;
 enum wireless_mode wirelessmode = 0;
 bool b_shortgi = 0;
 u8 rate_mask[5];
 u8 macid = 0;


 sta_entry = (struct rtl_sta_info *)sta->drv_priv;
 wirelessmode = sta_entry->wireless_mode;
 if (mac->opmode == NL80211_IFTYPE_STATION ||
  mac->opmode == NL80211_IFTYPE_MESH_POINT)
  curtxbw_40mhz = mac->bw_40;
 else if (mac->opmode == NL80211_IFTYPE_AP ||
  mac->opmode == NL80211_IFTYPE_ADHOC)
  macid = sta->aid + 1;

 if (rtlhal->current_bandtype == BAND_ON_5G)
  ratr_bitmap = sta->supp_rates[1] << 4;
 else
  ratr_bitmap = sta->supp_rates[0];
 if (mac->opmode == NL80211_IFTYPE_ADHOC)
  ratr_bitmap = 0xfff;
 ratr_bitmap |= (sta->ht_cap.mcs.rx_mask[1] << 20 |
   sta->ht_cap.mcs.rx_mask[0] << 12);
 switch (wirelessmode) {
 case 131:
  ratr_index = RATR_INX_WIRELESS_B;
  if (ratr_bitmap & 0x0000000c)
   ratr_bitmap &= 0x0000000d;
  else
   ratr_bitmap &= 0x0000000f;
  break;
 case 130:
  ratr_index = RATR_INX_WIRELESS_GB;

  if (rssi_level == 1)
   ratr_bitmap &= 0x00000f00;
  else if (rssi_level == 2)
   ratr_bitmap &= 0x00000ff0;
  else
   ratr_bitmap &= 0x00000ff5;
  break;
 case 129:
 case 128:
  ratr_index = RATR_INX_WIRELESS_NGB;
  if (rtlphy->rf_type == RF_1T2R ||
      rtlphy->rf_type == RF_1T1R) {
   if (curtxbw_40mhz) {
    if (rssi_level == 1)
     ratr_bitmap &= 0x000f0000;
    else if (rssi_level == 2)
     ratr_bitmap &= 0x000ff000;
    else
     ratr_bitmap &= 0x000ff015;
   } else {
    if (rssi_level == 1)
     ratr_bitmap &= 0x000f0000;
    else if (rssi_level == 2)
     ratr_bitmap &= 0x000ff000;
    else
     ratr_bitmap &= 0x000ff005;
   }
  } else {
   if (curtxbw_40mhz) {
    if (rssi_level == 1)
     ratr_bitmap &= 0x0f8f0000;
    else if (rssi_level == 2)
     ratr_bitmap &= 0x0f8ff000;
    else
     ratr_bitmap &= 0x0f8ff015;
   } else {
    if (rssi_level == 1)
     ratr_bitmap &= 0x0f8f0000;
    else if (rssi_level == 2)
     ratr_bitmap &= 0x0f8ff000;
    else
     ratr_bitmap &= 0x0f8ff005;
   }
  }


  if ((curtxbw_40mhz && curshortgi_40mhz) ||
      (!curtxbw_40mhz && curshortgi_20mhz)) {

   if (macid == 0)
    b_shortgi = 1;
   else if (macid == 1)
    b_shortgi = 0;
  }
  break;
 default:
  ratr_index = RATR_INX_WIRELESS_NGB;

  if (rtlphy->rf_type == RF_1T2R)
   ratr_bitmap &= 0x000ff0ff;
  else
   ratr_bitmap &= 0x0f0ff0ff;
  break;
 }
 sta_entry->ratr_index = ratr_index;

 RT_TRACE(rtlpriv, COMP_RATR, DBG_DMESG,
   "ratr_bitmap :%x\n", ratr_bitmap);
 *(u32 *)&rate_mask = (ratr_bitmap & 0x0fffffff) |
        (ratr_index << 28);
 rate_mask[4] = macid | (b_shortgi ? 0x20 : 0x00) | 0x80;
 RT_TRACE(rtlpriv, COMP_RATR, DBG_DMESG,
   "Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x\n",
   ratr_index, ratr_bitmap,
   rate_mask[0], rate_mask[1],
   rate_mask[2], rate_mask[3],
   rate_mask[4]);
 rtl88e_fill_h2c_cmd(hw, H2C_88E_RA_MASK, 5, rate_mask);
 _rtl88ee_set_bcn_ctrl_reg(hw, BIT(3), 0);
}
