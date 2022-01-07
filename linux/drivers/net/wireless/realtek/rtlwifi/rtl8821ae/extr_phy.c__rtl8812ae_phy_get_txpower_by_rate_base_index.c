
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum band_type { ____Placeholder_band_type } band_type ;


 int BAND_ON_2_4G ;
 int BAND_ON_5G ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static u8 _rtl8812ae_phy_get_txpower_by_rate_base_index(struct ieee80211_hw *hw,
         enum band_type band, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 index = 0;
 if (band == BAND_ON_2_4G) {
  switch (rate) {
  case 172:
  case 170:
  case 166:
  case 175:
   index = 0;
   break;

  case 165:
  case 164:
  case 174:
  case 173:
  case 171:
  case 169:
  case 168:
  case 167:
   index = 1;
   break;

  case 163:
  case 162:
  case 155:
  case 154:
  case 153:
  case 152:
  case 151:
  case 150:
   index = 2;
   break;

  case 149:
  case 148:
  case 161:
  case 160:
  case 159:
  case 158:
  case 157:
  case 156:
   index = 3;
   break;

  default:
   RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Wrong rate 0x%x to obtain index in 2.4G in PHY_GetTxPowerByRateBaseIndex()\n",
    rate);
   break;
  }
 } else if (band == BAND_ON_5G) {
  switch (rate) {
  case 165:
  case 164:
  case 174:
  case 173:
  case 171:
  case 169:
  case 168:
  case 167:
   index = 0;
   break;

  case 163:
  case 162:
  case 155:
  case 154:
  case 153:
  case 152:
  case 151:
  case 150:
   index = 1;
   break;

  case 149:
  case 148:
  case 161:
  case 160:
  case 159:
  case 158:
  case 157:
  case 156:
   index = 2;
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
   index = 3;
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
   index = 4;
   break;

  default:
   RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Wrong rate 0x%x to obtain index in 5G in PHY_GetTxPowerByRateBaseIndex()\n",
    rate);
   break;
  }
 }

 return index;
}
