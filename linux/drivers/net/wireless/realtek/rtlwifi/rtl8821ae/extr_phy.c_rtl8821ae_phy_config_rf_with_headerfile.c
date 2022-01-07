
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_INIT ;
 int DBG_LOUD ;




 int RTL8821AE_RADIOA_1TARRAYLEN ;
 int * RTL8821AE_RADIOA_ARRAY ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int __rtl8821ae_phy_config_with_headerfile (struct ieee80211_hw*,int *,int,int ) ;
 int _rtl8821ae_config_rf_radio_a ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl8821ae_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
      enum radio_path rfpath)
{
 bool rtstatus = 1;
 u32 *radioa_array_table;
 u16 radioa_arraylen;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 radioa_arraylen = RTL8821AE_RADIOA_1TARRAYLEN;
 radioa_array_table = RTL8821AE_RADIOA_ARRAY;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "Radio_A:RTL8821AE_RADIOA_ARRAY %d\n", radioa_arraylen);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Radio No %x\n", rfpath);
 rtstatus = 1;
 switch (rfpath) {
 case 131:
  return __rtl8821ae_phy_config_with_headerfile(hw,
   radioa_array_table, radioa_arraylen,
   _rtl8821ae_config_rf_radio_a);
  break;

 case 130:
 case 129:
 case 128:
  pr_err("switch case %#x not processed\n", rfpath);
  break;
 }
 return 1;
}
