
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_INIT ;
 int DBG_TRACE ;
 scalar_t__ IS_92C_SERIAL (int ) ;
 int RADIOA_1TARRAYLENGTH ;
 int RADIOA_2TARRAYLENGTH ;
 int RADIOB_1TARRAYLENGTH ;
 int RADIOB_2TARRAYLENGTH ;




 int RFREG_OFFSET_MASK ;
 int * RTL8192CERADIOA_2TARRAY ;
 int * RTL8192CE_RADIOA_1TARRAY ;
 int * RTL8192CE_RADIOB_1TARRAY ;
 int * RTL8192CE_RADIOB_2TARRAY ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int pr_info (char*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_rfreg_delay (struct ieee80211_hw*,int,int ,int ,int ) ;

bool rtl92c_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
       enum radio_path rfpath)
{

 int i;
 u32 *radioa_array_table;
 u32 *radiob_array_table;
 u16 radioa_arraylen, radiob_arraylen;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (IS_92C_SERIAL(rtlhal->version)) {
  radioa_arraylen = RADIOA_2TARRAYLENGTH;
  radioa_array_table = RTL8192CERADIOA_2TARRAY;
  radiob_arraylen = RADIOB_2TARRAYLENGTH;
  radiob_array_table = RTL8192CE_RADIOB_2TARRAY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_A:RTL8192CERADIOA_2TARRAY\n");
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_B:RTL8192CE_RADIOB_2TARRAY\n");
 } else {
  radioa_arraylen = RADIOA_1TARRAYLENGTH;
  radioa_array_table = RTL8192CE_RADIOA_1TARRAY;
  radiob_arraylen = RADIOB_1TARRAYLENGTH;
  radiob_array_table = RTL8192CE_RADIOB_1TARRAY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_A:RTL8192CE_RADIOA_1TARRAY\n");
  RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
    "Radio_B:RTL8192CE_RADIOB_1TARRAY\n");
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
  pr_info("Incorrect rfpath %#x\n", rfpath);
  break;
 default:
  pr_info("switch case %#x not processed\n", rfpath);
  break;
 }
 return 1;
}
