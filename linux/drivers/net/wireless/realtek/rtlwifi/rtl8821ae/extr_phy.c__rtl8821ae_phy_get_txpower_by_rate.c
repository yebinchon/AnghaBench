
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int eeprom_regulatory; } ;
struct rtl_phy {int**** tx_power_by_rate_offset; int current_channel; int current_chan_bw; } ;
struct rtl_priv {TYPE_1__ efuse; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 int RF_1TX ;
 int RF_2TX ;
 int RF_TX_NUM_NONIMPLEMENT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int WARN_ONCE (int,char*) ;
 int _rtl8812ae_phy_get_txpower_limit (struct ieee80211_hw*,int,int ,int,int,int ) ;
 int _rtl8821ae_phy_get_ratesection_intxpower_byrate (int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static s8 _rtl8821ae_phy_get_txpower_by_rate(struct ieee80211_hw *hw,
     u8 band, u8 path, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 shift = 0, rate_section, tx_num;
 s8 tx_pwr_diff = 0;
 s8 limit = 0;

 rate_section = _rtl8821ae_phy_get_ratesection_intxpower_byrate(path, rate);
 tx_num = RF_TX_NUM_NONIMPLEMENT;

 if (tx_num == RF_TX_NUM_NONIMPLEMENT) {
  if ((rate >= 149 && rate <= 156) ||
   (rate >= 135 && rate <= 128))
   tx_num = RF_2TX;
  else
   tx_num = RF_1TX;
 }

 switch (rate) {
 case 172:
 case 165:
 case 171:
 case 163:
 case 153:
 case 149:
 case 159:
 case 147:
 case 143:
 case 139:
 case 135:
 case 131:
  shift = 0;
  break;
 case 170:
 case 164:
 case 169:
 case 162:
 case 152:
 case 148:
 case 158:
 case 146:
 case 142:
 case 138:
 case 134:
 case 130:
  shift = 8;
  break;
 case 166:
 case 174:
 case 168:
 case 155:
 case 151:
 case 161:
 case 157:
 case 145:
 case 141:
 case 137:
 case 133:
 case 129:
  shift = 16;
  break;
 case 175:
 case 173:
 case 167:
 case 154:
 case 150:
 case 160:
 case 156:
 case 144:
 case 140:
 case 136:
 case 132:
 case 128:
  shift = 24;
  break;
 default:
  WARN_ONCE(1, "rtl8821ae: Rate_Section is Illegal\n");
  break;
 }

 tx_pwr_diff = (u8)(rtlphy->tx_power_by_rate_offset[band][path]
  [tx_num][rate_section] >> shift) & 0xff;


 if (rtlpriv->efuse.eeprom_regulatory != 2) {
  limit = _rtl8812ae_phy_get_txpower_limit(hw, band,
   rtlphy->current_chan_bw, path, rate,
   rtlphy->current_channel);

  if (rate == 139 || rate == 138 ||
    rate == 129 || rate == 128) {
   if (limit < 0) {
    if (tx_pwr_diff < (-limit))
     tx_pwr_diff = -limit;
   }
  } else {
   if (limit < 0)
    tx_pwr_diff = limit;
   else
    tx_pwr_diff = tx_pwr_diff > limit ? limit : tx_pwr_diff;
  }
  RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "Maximum power by rate %d, final power by rate %d\n",
   limit, tx_pwr_diff);
 }

 return tx_pwr_diff;
}
