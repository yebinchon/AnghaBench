
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
 int RTXAGC_A_CCK1_MCS32 ;
 int RTXAGC_A_MCS03_MCS00 ;
 int RTXAGC_A_MCS07_MCS04 ;
 int RTXAGC_A_MCS11_MCS08 ;
 int RTXAGC_A_RATE18_06 ;
 int RTXAGC_A_RATE54_24 ;
 int RTXAGC_B_CCK11_A_CCK2_11 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int rtl8723_phy_set_bb_reg (struct ieee80211_hw*,int ,int ,scalar_t__) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8723be_phy_set_txpower_index(struct ieee80211_hw *hw,
          u8 power_index, u8 path, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 if (path == RF90_PATH_A) {
  switch (rate) {
  case 148:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_CCK1_MCS32,
            MASKBYTE1, power_index);
   break;
  case 146:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_B_CCK11_A_CCK2_11,
            MASKBYTE1, power_index);
   break;
  case 142:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_B_CCK11_A_CCK2_11,
            MASKBYTE2, power_index);
   break;
  case 151:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_B_CCK11_A_CCK2_11,
            MASKBYTE3, power_index);
   break;

  case 141:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE18_06,
            MASKBYTE0, power_index);
   break;
  case 140:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE18_06,
            MASKBYTE1, power_index);
   break;
  case 150:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE18_06,
            MASKBYTE2, power_index);
   break;
  case 149:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE18_06,
            MASKBYTE3, power_index);
   break;

  case 147:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE54_24,
            MASKBYTE0, power_index);
   break;
  case 145:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE54_24,
            MASKBYTE1, power_index);
   break;
  case 144:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE54_24,
            MASKBYTE2, power_index);
   break;
  case 143:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_RATE54_24,
            MASKBYTE3, power_index);
   break;

  case 139:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS03_MCS00,
            MASKBYTE0, power_index);
   break;
  case 138:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS03_MCS00,
            MASKBYTE1, power_index);
   break;
  case 135:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS03_MCS00,
            MASKBYTE2, power_index);
   break;
  case 134:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS03_MCS00,
            MASKBYTE3, power_index);
   break;

  case 133:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS07_MCS04,
            MASKBYTE0, power_index);
   break;
  case 132:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS07_MCS04,
            MASKBYTE1, power_index);
   break;
  case 131:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS07_MCS04,
            MASKBYTE2, power_index);
   break;
  case 130:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS07_MCS04,
            MASKBYTE3, power_index);
   break;

  case 129:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS11_MCS08,
            MASKBYTE0, power_index);
   break;
  case 128:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS11_MCS08,
            MASKBYTE1, power_index);
   break;
  case 137:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS11_MCS08,
            MASKBYTE2, power_index);
   break;
  case 136:
   rtl8723_phy_set_bb_reg(hw, RTXAGC_A_MCS11_MCS08,
            MASKBYTE3, power_index);
   break;

  default:
   RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "Invalid Rate!!\n");
   break;
  }
 } else {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "Invalid RFPath!!\n");
 }
}
