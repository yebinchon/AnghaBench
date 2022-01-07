
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct rtl_phy {TYPE_1__* hwparam_tables; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_2__ {int length; int * pdata; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 scalar_t__ IS_92C_SERIAL (int ) ;
 size_t RADIOA_1T ;
 size_t RADIOA_2T ;
 size_t RADIOB_1T ;
 size_t RADIOB_2T ;




 int RFREG_OFFSET_MASK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int pr_err (char*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_rfreg_delay (struct ieee80211_hw*,int,int ,int ,int ) ;

bool rtl92cu_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
       enum radio_path rfpath)
{
 int i;
 u32 *radioa_array_table;
 u32 *radiob_array_table;
 u16 radioa_arraylen, radiob_arraylen;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 if (IS_92C_SERIAL(rtlhal->version)) {
  radioa_arraylen = rtlphy->hwparam_tables[RADIOA_2T].length;
  radioa_array_table = rtlphy->hwparam_tables[RADIOA_2T].pdata;
  radiob_arraylen = rtlphy->hwparam_tables[RADIOB_2T].length;
  radiob_array_table = rtlphy->hwparam_tables[RADIOB_2T].pdata;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_A:RTL8192CURADIOA_2TARRAY\n");
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_B:RTL8192CU_RADIOB_2TARRAY\n");
 } else {
  radioa_arraylen = rtlphy->hwparam_tables[RADIOA_1T].length;
  radioa_array_table = rtlphy->hwparam_tables[RADIOA_1T].pdata;
  radiob_arraylen = rtlphy->hwparam_tables[RADIOB_1T].length;
  radiob_array_table = rtlphy->hwparam_tables[RADIOB_1T].pdata;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_A:RTL8192CU_RADIOA_1TARRAY\n");
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_B:RTL8192CU_RADIOB_1TARRAY\n");
 }
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Radio No %x\n", rfpath);
 switch (rfpath) {
 case 131:
  for (i = 0; i < radioa_arraylen; i = i + 2) {
   rtl_rfreg_delay(hw, rfpath, radioa_array_table[i],
     RFREG_OFFSET_MASK,
     radioa_array_table[i + 1]);
  }
  break;
 case 130:
  for (i = 0; i < radiob_arraylen; i = i + 2) {
   rtl_rfreg_delay(hw, rfpath, radiob_array_table[i],
     RFREG_OFFSET_MASK,
     radiob_array_table[i + 1]);
  }
  break;
 case 129:
 case 128:
  pr_err("switch case %#x not processed\n", rfpath);
  break;
 default:
  break;
 }
 return 1;
}
