
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int**** tx_power_by_rate_offset; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
typedef enum band_type { ____Placeholder_band_type } band_type ;
 int RF_1TX ;
 int RF_2TX ;
 int RF_TX_NUM_NONIMPLEMENT ;
 int WARN_ONCE (int,char*) ;
 int _rtl8723be_phy_get_ratesection_intxpower_byrate (int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static u8 _rtl8723be_get_txpower_by_rate(struct ieee80211_hw *hw,
      enum band_type band,
      enum radio_path rfpath, u8 rate)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 shift = 0, rate_section, tx_num;
 s8 tx_pwr_diff = 0;

 rate_section = _rtl8723be_phy_get_ratesection_intxpower_byrate(rfpath,
               rate);
 tx_num = RF_TX_NUM_NONIMPLEMENT;

 if (tx_num == RF_TX_NUM_NONIMPLEMENT) {
  if (rate >= 129 && rate <= 136)
   tx_num = RF_2TX;
  else
   tx_num = RF_1TX;
 }

 switch (rate) {
 case 145:
 case 151:
 case 143:
 case 133:
 case 129:
 case 139:
  shift = 0;
  break;
 case 152:
 case 150:
 case 144:
 case 149:
 case 142:
 case 132:
 case 128:
 case 138:
  shift = 8;
  break;
 case 146:
 case 154:
 case 148:
 case 135:
 case 131:
 case 141:
 case 137:
  shift = 16;
  break;
 case 155:
 case 153:
 case 147:
 case 134:
 case 130:
 case 140:
 case 136:
  shift = 24;
  break;
 default:
  WARN_ONCE(1, "rtl8723be: Rate_Section is Illegal\n");
  break;
 }
 tx_pwr_diff = (u8)(rtlphy->tx_power_by_rate_offset[band][rfpath][tx_num]
       [rate_section] >> shift) & 0xff;

 return tx_pwr_diff;
}
