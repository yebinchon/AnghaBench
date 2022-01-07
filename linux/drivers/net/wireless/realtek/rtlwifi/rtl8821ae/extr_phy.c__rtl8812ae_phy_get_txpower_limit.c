
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct rtl_phy {int ***** txpwr_limit_5g; int ***** txpwr_limit_2_4g; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_efuse {int eeprom_regulatory; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;


 int BAND_ON_2_4G ;
 int BAND_ON_5G ;
 int BAND_ON_BOTH ;
 int COMP_INIT ;
 int COMP_POWER ;
 int DBG_LOUD ;
 int HT_CHANNEL_WIDTH_20 ;
 int HT_CHANNEL_WIDTH_20_40 ;
 int HT_CHANNEL_WIDTH_80 ;
 int MAX_POWER_INDEX ;
 int MAX_REGULATION_NUM ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 short TXPWR_LMT_WW ;
 short _rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt (struct ieee80211_hw*,int,int) ;
 int _rtl8812ae_phy_get_world_wide_limit (int *) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static s8 _rtl8812ae_phy_get_txpower_limit(struct ieee80211_hw *hw,
          u8 band,
          enum ht_channel_width bandwidth,
          enum radio_path rf_path,
          u8 rate, u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtlpriv);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 short band_temp = -1, regulation = -1, bandwidth_temp = -1,
   rate_section = -1, channel_temp = -1;
 u16 bd, regu, bdwidth, sec, chnl;
 s8 power_limit = MAX_POWER_INDEX;

 if (rtlefuse->eeprom_regulatory == 2)
  return MAX_POWER_INDEX;

 regulation = TXPWR_LMT_WW;

 if (band == BAND_ON_2_4G)
  band_temp = 0;
 else if (band == BAND_ON_5G)
  band_temp = 1;

 if (bandwidth == HT_CHANNEL_WIDTH_20)
  bandwidth_temp = 0;
 else if (bandwidth == HT_CHANNEL_WIDTH_20_40)
  bandwidth_temp = 1;
 else if (bandwidth == HT_CHANNEL_WIDTH_80)
  bandwidth_temp = 2;

 switch (rate) {
 case 172:
 case 170:
 case 166:
 case 175:
  rate_section = 0;
  break;
 case 165:
 case 164:
 case 174:
 case 173:
 case 171:
 case 169:
 case 168:
 case 167:
  rate_section = 1;
  break;
 case 163:
 case 162:
 case 155:
 case 154:
 case 153:
 case 152:
 case 151:
 case 150:
  rate_section = 2;
  break;
 case 149:
 case 148:
 case 161:
 case 160:
 case 159:
 case 158:
 case 157:
 case 156:
  rate_section = 3;
  break;
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
  rate_section = 4;
  break;
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  rate_section = 5;
  break;
 default:
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
   "Wrong rate 0x%x\n", rate);
  break;
 }

 if (band_temp == BAND_ON_5G && rate_section == 0)
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Wrong rate 0x%x: No CCK in 5G Band\n", rate);



 if (rate_section == 1)
  bandwidth_temp = 0;




 if ((rate_section == 2 || rate_section == 3) && band == BAND_ON_5G &&
     bandwidth_temp == 2)
  bandwidth_temp = 1;

 if (band == BAND_ON_2_4G)
  channel_temp = _rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(hw,
  BAND_ON_2_4G, channel);
 else if (band == BAND_ON_5G)
  channel_temp = _rtl8812ae_phy_get_chnl_idx_of_txpwr_lmt(hw,
  BAND_ON_5G, channel);
 else if (band == BAND_ON_BOTH)
  ;

 if (band_temp == -1 || regulation == -1 || bandwidth_temp == -1 ||
  rate_section == -1 || channel_temp == -1) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Wrong index value to access power limit table [band %d][regulation %d][bandwidth %d][rf_path %d][rate_section %d][chnl %d]\n",
    band_temp, regulation, bandwidth_temp, rf_path,
    rate_section, channel_temp);
  return MAX_POWER_INDEX;
 }

 bd = band_temp;
 regu = regulation;
 bdwidth = bandwidth_temp;
 sec = rate_section;
 chnl = channel_temp;

 if (band == BAND_ON_2_4G) {
  s8 limits[10] = {0};
  u8 i;

  for (i = 0; i < 4; ++i)
   limits[i] = rtlphy->txpwr_limit_2_4g[i][bdwidth]
   [sec][chnl][rf_path];

  power_limit = (regulation == TXPWR_LMT_WW) ?
   _rtl8812ae_phy_get_world_wide_limit(limits) :
   rtlphy->txpwr_limit_2_4g[regu][bdwidth]
     [sec][chnl][rf_path];
 } else if (band == BAND_ON_5G) {
  s8 limits[10] = {0};
  u8 i;

  for (i = 0; i < MAX_REGULATION_NUM; ++i)
   limits[i] = rtlphy->txpwr_limit_5g[i][bdwidth]
   [sec][chnl][rf_path];

  power_limit = (regulation == TXPWR_LMT_WW) ?
   _rtl8812ae_phy_get_world_wide_limit(limits) :
   rtlphy->txpwr_limit_5g[regu][chnl]
   [sec][chnl][rf_path];
 } else {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "No power limit table of the specified band\n");
 }
 return power_limit;
}
