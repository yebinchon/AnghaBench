
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_POWER ;
 int DBG_LOUD ;
 int MASKBYTE0 ;
 int MASKBYTE1 ;
 int MASKBYTE2 ;
 int MASKBYTE3 ;
 int RF90_PATH_A ;
 int RF90_PATH_B ;
 int RTXAGC_A_CCK1_MCS32 ;
 int RTXAGC_A_MCS03_MCS00 ;
 int RTXAGC_A_MCS07_MCS04 ;
 int RTXAGC_A_MCS11_MCS08 ;
 int RTXAGC_A_MCS15_MCS12 ;
 int RTXAGC_A_RATE18_06 ;
 int RTXAGC_A_RATE54_24 ;
 int RTXAGC_B_CCK11_A_CCK2_11 ;
 int RTXAGC_B_CCK1_55_MCS32 ;
 int RTXAGC_B_MCS03_MCS00 ;
 int RTXAGC_B_MCS07_MCS04 ;
 int RTXAGC_B_MCS11_MCS08 ;
 int RTXAGC_B_MCS15_MCS12 ;
 int RTXAGC_B_RATE18_06 ;
 int RTXAGC_B_RATE54_24 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

__attribute__((used)) static void _rtl92ee_set_txpower_index(struct ieee80211_hw *hw, u8 pwr_idx,
           enum radio_path rfpath, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rfpath == RF90_PATH_A) {
  switch (rate) {
  case 152:
   rtl_set_bbreg(hw, RTXAGC_A_CCK1_MCS32, MASKBYTE1,
          pwr_idx);
   break;
  case 150:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_A_CCK2_11, MASKBYTE1,
          pwr_idx);
   break;
  case 146:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_A_CCK2_11, MASKBYTE2,
          pwr_idx);
   break;
  case 155:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_A_CCK2_11, MASKBYTE3,
          pwr_idx);
   break;
  case 145:
   rtl_set_bbreg(hw, RTXAGC_A_RATE18_06, MASKBYTE0,
          pwr_idx);
   break;
  case 144:
   rtl_set_bbreg(hw, RTXAGC_A_RATE18_06, MASKBYTE1,
          pwr_idx);
   break;
  case 154:
   rtl_set_bbreg(hw, RTXAGC_A_RATE18_06, MASKBYTE2,
          pwr_idx);
   break;
  case 153:
   rtl_set_bbreg(hw, RTXAGC_A_RATE18_06, MASKBYTE3,
          pwr_idx);
   break;
  case 151:
   rtl_set_bbreg(hw, RTXAGC_A_RATE54_24, MASKBYTE0,
          pwr_idx);
   break;
  case 149:
   rtl_set_bbreg(hw, RTXAGC_A_RATE54_24, MASKBYTE1,
          pwr_idx);
   break;
  case 148:
   rtl_set_bbreg(hw, RTXAGC_A_RATE54_24, MASKBYTE2,
          pwr_idx);
   break;
  case 147:
   rtl_set_bbreg(hw, RTXAGC_A_RATE54_24, MASKBYTE3,
          pwr_idx);
   break;
  case 143:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00, MASKBYTE0,
          pwr_idx);
   break;
  case 142:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00, MASKBYTE1,
          pwr_idx);
   break;
  case 135:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00, MASKBYTE2,
          pwr_idx);
   break;
  case 134:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00, MASKBYTE3,
          pwr_idx);
   break;
  case 133:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04, MASKBYTE0,
          pwr_idx);
   break;
  case 132:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04, MASKBYTE1,
          pwr_idx);
   break;
  case 131:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04, MASKBYTE2,
          pwr_idx);
   break;
  case 130:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04, MASKBYTE3,
          pwr_idx);
   break;
  case 129:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08, MASKBYTE0,
          pwr_idx);
   break;
  case 128:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08, MASKBYTE1,
          pwr_idx);
   break;
  case 141:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08, MASKBYTE2,
          pwr_idx);
   break;
  case 140:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08, MASKBYTE3,
          pwr_idx);
   break;
  case 139:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12, MASKBYTE0,
          pwr_idx);
   break;
  case 138:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12, MASKBYTE1,
          pwr_idx);
   break;
  case 137:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12, MASKBYTE2,
          pwr_idx);
   break;
  case 136:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12, MASKBYTE3,
          pwr_idx);
   break;
  default:
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
     "Invalid Rate!!\n");
   break;
  }
 } else if (rfpath == RF90_PATH_B) {
  switch (rate) {
  case 152:
   rtl_set_bbreg(hw, RTXAGC_B_CCK1_55_MCS32, MASKBYTE1,
          pwr_idx);
   break;
  case 150:
   rtl_set_bbreg(hw, RTXAGC_B_CCK1_55_MCS32, MASKBYTE2,
          pwr_idx);
   break;
  case 146:
   rtl_set_bbreg(hw, RTXAGC_B_CCK1_55_MCS32, MASKBYTE3,
          pwr_idx);
   break;
  case 155:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_A_CCK2_11, MASKBYTE0,
          pwr_idx);
   break;
  case 145:
   rtl_set_bbreg(hw, RTXAGC_B_RATE18_06, MASKBYTE0,
          pwr_idx);
   break;
  case 144:
   rtl_set_bbreg(hw, RTXAGC_B_RATE18_06, MASKBYTE1,
          pwr_idx);
   break;
  case 154:
   rtl_set_bbreg(hw, RTXAGC_B_RATE18_06, MASKBYTE2,
          pwr_idx);
   break;
  case 153:
   rtl_set_bbreg(hw, RTXAGC_B_RATE18_06, MASKBYTE3,
          pwr_idx);
   break;
  case 151:
   rtl_set_bbreg(hw, RTXAGC_B_RATE54_24, MASKBYTE0,
          pwr_idx);
   break;
  case 149:
   rtl_set_bbreg(hw, RTXAGC_B_RATE54_24, MASKBYTE1,
          pwr_idx);
   break;
  case 148:
   rtl_set_bbreg(hw, RTXAGC_B_RATE54_24, MASKBYTE2,
          pwr_idx);
   break;
  case 147:
   rtl_set_bbreg(hw, RTXAGC_B_RATE54_24, MASKBYTE3,
          pwr_idx);
   break;
  case 143:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00, MASKBYTE0,
          pwr_idx);
   break;
  case 142:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00, MASKBYTE1,
          pwr_idx);
   break;
  case 135:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00, MASKBYTE2,
          pwr_idx);
   break;
  case 134:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00, MASKBYTE3,
          pwr_idx);
   break;
  case 133:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04, MASKBYTE0,
          pwr_idx);
   break;
  case 132:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04, MASKBYTE1,
          pwr_idx);
   break;
  case 131:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04, MASKBYTE2,
          pwr_idx);
   break;
  case 130:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04, MASKBYTE3,
          pwr_idx);
   break;
  case 129:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08, MASKBYTE0,
          pwr_idx);
   break;
  case 128:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08, MASKBYTE1,
          pwr_idx);
   break;
  case 141:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08, MASKBYTE2,
          pwr_idx);
   break;
  case 140:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08, MASKBYTE3,
          pwr_idx);
   break;
  case 139:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12, MASKBYTE0,
          pwr_idx);
   break;
  case 138:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12, MASKBYTE1,
          pwr_idx);
   break;
  case 137:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12, MASKBYTE2,
          pwr_idx);
   break;
  case 136:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12, MASKBYTE3,
          pwr_idx);
   break;
  default:
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
     "Invalid Rate!!\n");
   break;
  }
 } else {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "Invalid RFPath!!\n");
 }
}
