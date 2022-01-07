
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER ;
 int DBG_LOUD ;
 int MASKBYTE0 ;
 int MASKBYTE1 ;
 int MASKBYTE2 ;
 int MASKBYTE3 ;
 scalar_t__ RF90_PATH_A ;
 scalar_t__ RF90_PATH_B ;
 int RTXAGC_A_CCK11_CCK1 ;
 int RTXAGC_A_MCS03_MCS00 ;
 int RTXAGC_A_MCS07_MCS04 ;
 int RTXAGC_A_MCS11_MCS08 ;
 int RTXAGC_A_MCS15_MCS12 ;
 int RTXAGC_A_NSS1INDEX3_NSS1INDEX0 ;
 int RTXAGC_A_NSS1INDEX7_NSS1INDEX4 ;
 int RTXAGC_A_NSS2INDEX1_NSS1INDEX8 ;
 int RTXAGC_A_NSS2INDEX5_NSS2INDEX2 ;
 int RTXAGC_A_NSS2INDEX9_NSS2INDEX6 ;
 int RTXAGC_A_OFDM18_OFDM6 ;
 int RTXAGC_A_OFDM54_OFDM24 ;
 int RTXAGC_B_CCK11_CCK1 ;
 int RTXAGC_B_MCS03_MCS00 ;
 int RTXAGC_B_MCS07_MCS04 ;
 int RTXAGC_B_MCS11_MCS08 ;
 int RTXAGC_B_MCS15_MCS12 ;
 int RTXAGC_B_NSS1INDEX3_NSS1INDEX0 ;
 int RTXAGC_B_NSS1INDEX7_NSS1INDEX4 ;
 int RTXAGC_B_NSS2INDEX1_NSS1INDEX8 ;
 int RTXAGC_B_NSS2INDEX5_NSS2INDEX2 ;
 int RTXAGC_B_NSS2INDEX9_NSS2INDEX6 ;
 int RTXAGC_B_OFDM18_OFDM6 ;
 int RTXAGC_B_OFDM54_OFDM24 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,scalar_t__) ;

__attribute__((used)) static void _rtl8821ae_phy_set_txpower_index(struct ieee80211_hw *hw,
          u8 power_index, u8 path, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (path == RF90_PATH_A) {
  switch (rate) {
  case 172:
   rtl_set_bbreg(hw, RTXAGC_A_CCK11_CCK1,
          MASKBYTE0, power_index);
   break;
  case 170:
   rtl_set_bbreg(hw, RTXAGC_A_CCK11_CCK1,
          MASKBYTE1, power_index);
   break;
  case 166:
   rtl_set_bbreg(hw, RTXAGC_A_CCK11_CCK1,
          MASKBYTE2, power_index);
   break;
  case 175:
   rtl_set_bbreg(hw, RTXAGC_A_CCK11_CCK1,
          MASKBYTE3, power_index);
   break;
  case 165:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM18_OFDM6,
          MASKBYTE0, power_index);
   break;
  case 164:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM18_OFDM6,
          MASKBYTE1, power_index);
   break;
  case 174:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM18_OFDM6,
          MASKBYTE2, power_index);
   break;
  case 173:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM18_OFDM6,
          MASKBYTE3, power_index);
   break;
  case 171:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM54_OFDM24,
          MASKBYTE0, power_index);
   break;
  case 169:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM54_OFDM24,
          MASKBYTE1, power_index);
   break;
  case 168:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM54_OFDM24,
          MASKBYTE2, power_index);
   break;
  case 167:
   rtl_set_bbreg(hw, RTXAGC_A_OFDM54_OFDM24,
          MASKBYTE3, power_index);
   break;
  case 163:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00,
          MASKBYTE0, power_index);
   break;
  case 162:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00,
          MASKBYTE1, power_index);
   break;
  case 155:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00,
          MASKBYTE2, power_index);
   break;
  case 154:
   rtl_set_bbreg(hw, RTXAGC_A_MCS03_MCS00,
          MASKBYTE3, power_index);
   break;
  case 153:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04,
          MASKBYTE0, power_index);
   break;
  case 152:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04,
          MASKBYTE1, power_index);
   break;
  case 151:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04,
          MASKBYTE2, power_index);
   break;
  case 150:
   rtl_set_bbreg(hw, RTXAGC_A_MCS07_MCS04,
          MASKBYTE3, power_index);
   break;
  case 149:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08,
          MASKBYTE0, power_index);
   break;
  case 148:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08,
          MASKBYTE1, power_index);
   break;
  case 161:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08,
          MASKBYTE2, power_index);
   break;
  case 160:
   rtl_set_bbreg(hw, RTXAGC_A_MCS11_MCS08,
          MASKBYTE3, power_index);
   break;
  case 159:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12,
          MASKBYTE0, power_index);
   break;
  case 158:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12,
          MASKBYTE1, power_index);
   break;
  case 157:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12,
          MASKBYTE2, power_index);
   break;
  case 156:
   rtl_set_bbreg(hw, RTXAGC_A_MCS15_MCS12,
          MASKBYTE3, power_index);
   break;
  case 147:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE0, power_index);
   break;
  case 146:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE1, power_index);
   break;
  case 145:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE2, power_index);
   break;
  case 144:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE3, power_index);
   break;
  case 143:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE0, power_index);
   break;
  case 142:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE1, power_index);
   break;
  case 141:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE2, power_index);
   break;
  case 140:
   rtl_set_bbreg(hw, RTXAGC_A_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE3, power_index);
   break;
  case 139:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE0, power_index);
   break;
  case 138:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE1, power_index);
   break;
  case 137:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE2, power_index);
   break;
  case 136:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE3, power_index);
   break;
  case 135:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE0, power_index);
   break;
  case 134:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE1, power_index);
   break;
  case 133:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE2, power_index);
   break;
  case 132:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE3, power_index);
   break;
  case 131:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE0, power_index);
   break;
  case 130:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE1, power_index);
   break;
  case 129:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE2, power_index);
   break;
  case 128:
   rtl_set_bbreg(hw, RTXAGC_A_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE3, power_index);
   break;
  default:
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Invalid Rate!!\n");
   break;
  }
 } else if (path == RF90_PATH_B) {
  switch (rate) {
  case 172:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_CCK1,
          MASKBYTE0, power_index);
   break;
  case 170:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_CCK1,
          MASKBYTE1, power_index);
   break;
  case 166:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_CCK1,
          MASKBYTE2, power_index);
   break;
  case 175:
   rtl_set_bbreg(hw, RTXAGC_B_CCK11_CCK1,
          MASKBYTE3, power_index);
   break;
  case 165:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM18_OFDM6,
          MASKBYTE0, power_index);
   break;
  case 164:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM18_OFDM6,
          MASKBYTE1, power_index);
   break;
  case 174:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM18_OFDM6,
          MASKBYTE2, power_index);
   break;
  case 173:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM18_OFDM6,
          MASKBYTE3, power_index);
   break;
  case 171:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM54_OFDM24,
          MASKBYTE0, power_index);
   break;
  case 169:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM54_OFDM24,
          MASKBYTE1, power_index);
   break;
  case 168:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM54_OFDM24,
          MASKBYTE2, power_index);
   break;
  case 167:
   rtl_set_bbreg(hw, RTXAGC_B_OFDM54_OFDM24,
          MASKBYTE3, power_index);
   break;
  case 163:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00,
          MASKBYTE0, power_index);
   break;
  case 162:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00,
          MASKBYTE1, power_index);
   break;
  case 155:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00,
          MASKBYTE2, power_index);
   break;
  case 154:
   rtl_set_bbreg(hw, RTXAGC_B_MCS03_MCS00,
          MASKBYTE3, power_index);
   break;
  case 153:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04,
          MASKBYTE0, power_index);
   break;
  case 152:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04,
          MASKBYTE1, power_index);
   break;
  case 151:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04,
          MASKBYTE2, power_index);
   break;
  case 150:
   rtl_set_bbreg(hw, RTXAGC_B_MCS07_MCS04,
          MASKBYTE3, power_index);
   break;
  case 149:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08,
          MASKBYTE0, power_index);
   break;
  case 148:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08,
          MASKBYTE1, power_index);
   break;
  case 161:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08,
          MASKBYTE2, power_index);
   break;
  case 160:
   rtl_set_bbreg(hw, RTXAGC_B_MCS11_MCS08,
          MASKBYTE3, power_index);
   break;
  case 159:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12,
          MASKBYTE0, power_index);
   break;
  case 158:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12,
          MASKBYTE1, power_index);
   break;
  case 157:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12,
          MASKBYTE2, power_index);
   break;
  case 156:
   rtl_set_bbreg(hw, RTXAGC_B_MCS15_MCS12,
          MASKBYTE3, power_index);
   break;
  case 147:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE0, power_index);
   break;
  case 146:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE1, power_index);
   break;
  case 145:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE2, power_index);
   break;
  case 144:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX3_NSS1INDEX0,
          MASKBYTE3, power_index);
   break;
  case 143:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE0, power_index);
   break;
  case 142:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE1, power_index);
   break;
  case 141:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE2, power_index);
   break;
  case 140:
   rtl_set_bbreg(hw, RTXAGC_B_NSS1INDEX7_NSS1INDEX4,
          MASKBYTE3, power_index);
   break;
  case 139:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE0, power_index);
   break;
  case 138:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE1, power_index);
   break;
  case 137:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE2, power_index);
   break;
  case 136:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX1_NSS1INDEX8,
          MASKBYTE3, power_index);
   break;
  case 135:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE0, power_index);
   break;
  case 134:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE1, power_index);
   break;
  case 133:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE2, power_index);
   break;
  case 132:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX5_NSS2INDEX2,
          MASKBYTE3, power_index);
   break;
  case 131:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE0, power_index);
   break;
  case 130:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE1, power_index);
   break;
  case 129:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE2, power_index);
   break;
  case 128:
   rtl_set_bbreg(hw, RTXAGC_B_NSS2INDEX9_NSS2INDEX6,
          MASKBYTE3, power_index);
   break;
  default:
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
     "Invalid Rate!!\n");
   break;
  }
 } else {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "Invalid RFPath!!\n");
 }
}
