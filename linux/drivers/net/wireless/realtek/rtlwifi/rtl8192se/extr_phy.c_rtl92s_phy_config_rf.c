
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int MASK20BITS ;
 int RADIOA_1T_ARRAYLENGTH ;
 int RADIOB_ARRAYLENGTH ;
 int RADIOB_GM_ARRAYLENGTH ;




 scalar_t__ RF_2T2R_GREEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int _rtl92s_phy_config_rfpa_bias_current (struct ieee80211_hw*,int) ;
 int * rtl8192seradioa_1t_array ;
 int * rtl8192seradiob_array ;
 int * rtl8192seradiob_gm_array ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_rfreg_delay (struct ieee80211_hw*,int,int ,int ,int ) ;

u8 rtl92s_phy_config_rf(struct ieee80211_hw *hw, enum radio_path rfpath)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 int i;
 bool rtstatus = 1;
 u32 *radio_a_table;
 u32 *radio_b_table;
 u16 radio_a_tblen, radio_b_tblen;

 radio_a_tblen = RADIOA_1T_ARRAYLENGTH;
 radio_a_table = rtl8192seradioa_1t_array;


 if (rtlphy->rf_type == RF_2T2R_GREEN) {
  radio_b_table = rtl8192seradiob_gm_array;
  radio_b_tblen = RADIOB_GM_ARRAYLENGTH;
 } else {
  radio_b_table = rtl8192seradiob_array;
  radio_b_tblen = RADIOB_ARRAYLENGTH;
 }

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
 rtstatus = 1;

 switch (rfpath) {
 case 131:
  for (i = 0; i < radio_a_tblen; i = i + 2) {
   rtl_rfreg_delay(hw, rfpath, radio_a_table[i],
     MASK20BITS, radio_a_table[i + 1]);

  }


  _rtl92s_phy_config_rfpa_bias_current(hw, rfpath);
  break;
 case 130:
  for (i = 0; i < radio_b_tblen; i = i + 2) {
   rtl_rfreg_delay(hw, rfpath, radio_b_table[i],
     MASK20BITS, radio_b_table[i + 1]);
  }
  break;
 case 129:
  ;
  break;
 case 128:
  ;
  break;
 default:
  break;
 }

 return rtstatus;
}
