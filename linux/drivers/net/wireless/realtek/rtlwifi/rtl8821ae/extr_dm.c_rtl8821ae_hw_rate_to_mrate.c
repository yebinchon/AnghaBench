
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 int MGN_11M ;
 int MGN_12M ;
 int MGN_18M ;
 int MGN_1M ;
 int MGN_24M ;
 int MGN_2M ;
 int MGN_36M ;
 int MGN_48M ;
 int MGN_54M ;
 int MGN_5_5M ;
 int MGN_6M ;
 int MGN_9M ;
 int MGN_MCS0 ;
 int MGN_MCS1 ;
 int MGN_MCS10 ;
 int MGN_MCS11 ;
 int MGN_MCS12 ;
 int MGN_MCS13 ;
 int MGN_MCS14 ;
 int MGN_MCS15 ;
 int MGN_MCS2 ;
 int MGN_MCS3 ;
 int MGN_MCS4 ;
 int MGN_MCS5 ;
 int MGN_MCS6 ;
 int MGN_MCS7 ;
 int MGN_MCS8 ;
 int MGN_MCS9 ;
 int MGN_VHT1SS_MCS0 ;
 int MGN_VHT1SS_MCS1 ;
 int MGN_VHT1SS_MCS2 ;
 int MGN_VHT1SS_MCS3 ;
 int MGN_VHT1SS_MCS4 ;
 int MGN_VHT1SS_MCS5 ;
 int MGN_VHT1SS_MCS6 ;
 int MGN_VHT1SS_MCS7 ;
 int MGN_VHT1SS_MCS8 ;
 int MGN_VHT1SS_MCS9 ;
 int MGN_VHT2SS_MCS0 ;
 int MGN_VHT2SS_MCS1 ;
 int MGN_VHT2SS_MCS2 ;
 int MGN_VHT2SS_MCS3 ;
 int MGN_VHT2SS_MCS4 ;
 int MGN_VHT2SS_MCS5 ;
 int MGN_VHT2SS_MCS6 ;
 int MGN_VHT2SS_MCS7 ;
 int MGN_VHT2SS_MCS8 ;
 int MGN_VHT2SS_MCS9 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

u8 rtl8821ae_hw_rate_to_mrate(struct ieee80211_hw *hw, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 ret_rate = MGN_1M;

 switch (rate) {
 case 172:
  ret_rate = MGN_1M;
  break;
 case 170:
  ret_rate = MGN_2M;
  break;
 case 166:
  ret_rate = MGN_5_5M;
  break;
 case 175:
  ret_rate = MGN_11M;
  break;
 case 165:
  ret_rate = MGN_6M;
  break;
 case 164:
  ret_rate = MGN_9M;
  break;
 case 174:
  ret_rate = MGN_12M;
  break;
 case 173:
  ret_rate = MGN_18M;
  break;
 case 171:
  ret_rate = MGN_24M;
  break;
 case 169:
  ret_rate = MGN_36M;
  break;
 case 168:
  ret_rate = MGN_48M;
  break;
 case 167:
  ret_rate = MGN_54M;
  break;
 case 163:
  ret_rate = MGN_MCS0;
  break;
 case 162:
  ret_rate = MGN_MCS1;
  break;
 case 155:
  ret_rate = MGN_MCS2;
  break;
 case 154:
  ret_rate = MGN_MCS3;
  break;
 case 153:
  ret_rate = MGN_MCS4;
  break;
 case 152:
  ret_rate = MGN_MCS5;
  break;
 case 151:
  ret_rate = MGN_MCS6;
  break;
 case 150:
  ret_rate = MGN_MCS7;
  break;
 case 149:
  ret_rate = MGN_MCS8;
  break;
 case 148:
  ret_rate = MGN_MCS9;
  break;
 case 161:
  ret_rate = MGN_MCS10;
  break;
 case 160:
  ret_rate = MGN_MCS11;
  break;
 case 159:
  ret_rate = MGN_MCS12;
  break;
 case 158:
  ret_rate = MGN_MCS13;
  break;
 case 157:
  ret_rate = MGN_MCS14;
  break;
 case 156:
  ret_rate = MGN_MCS15;
  break;
 case 147:
  ret_rate = MGN_VHT1SS_MCS0;
  break;
 case 146:
  ret_rate = MGN_VHT1SS_MCS1;
  break;
 case 145:
  ret_rate = MGN_VHT1SS_MCS2;
  break;
 case 144:
  ret_rate = MGN_VHT1SS_MCS3;
  break;
 case 143:
  ret_rate = MGN_VHT1SS_MCS4;
  break;
 case 142:
  ret_rate = MGN_VHT1SS_MCS5;
  break;
 case 141:
  ret_rate = MGN_VHT1SS_MCS6;
  break;
 case 140:
  ret_rate = MGN_VHT1SS_MCS7;
  break;
 case 139:
  ret_rate = MGN_VHT1SS_MCS8;
  break;
 case 138:
  ret_rate = MGN_VHT1SS_MCS9;
  break;
 case 137:
  ret_rate = MGN_VHT2SS_MCS0;
  break;
 case 136:
  ret_rate = MGN_VHT2SS_MCS1;
  break;
 case 135:
  ret_rate = MGN_VHT2SS_MCS2;
  break;
 case 134:
  ret_rate = MGN_VHT2SS_MCS3;
  break;
 case 133:
  ret_rate = MGN_VHT2SS_MCS4;
  break;
 case 132:
  ret_rate = MGN_VHT2SS_MCS5;
  break;
 case 131:
  ret_rate = MGN_VHT2SS_MCS6;
  break;
 case 130:
  ret_rate = MGN_VHT2SS_MCS7;
  break;
 case 129:
  ret_rate = MGN_VHT2SS_MCS8;
  break;
 case 128:
  ret_rate = MGN_VHT2SS_MCS9;
  break;
 default:
  RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
    "HwRateToMRate8812(): Non supported Rate [%x]!!!\n",
    rate);
  break;
 }
 return ret_rate;
}
