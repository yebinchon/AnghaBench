
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__* internal_pa_5g; } ;
struct rtl_priv {TYPE_1__ efuse; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_content { ____Placeholder_rf_content } rf_content ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int RADIOA_2T_ARRAYLENGTH ;
 int RADIOA_2T_INT_PA_ARRAYLENGTH ;
 int RADIOB_2T_ARRAYLENGTH ;
 int RADIOB_2T_INT_PA_ARRAYLENGTH ;




 int RFREG_OFFSET_MASK ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int pr_err (char*,int) ;
 int radiob_txt ;
 int * rtl8192de_radioa_2t_int_paarray ;
 int * rtl8192de_radioa_2tarray ;
 int * rtl8192de_radiob_2t_int_paarray ;
 int * rtl8192de_radiob_2tarray ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_rfreg_delay (struct ieee80211_hw*,int,int ,int ,int ) ;

bool rtl92d_phy_config_rf_with_headerfile(struct ieee80211_hw *hw,
       enum rf_content content,
       enum radio_path rfpath)
{
 int i;
 u32 *radioa_array_table;
 u32 *radiob_array_table;
 u16 radioa_arraylen, radiob_arraylen;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 radioa_arraylen = RADIOA_2T_ARRAYLENGTH;
 radioa_array_table = rtl8192de_radioa_2tarray;
 radiob_arraylen = RADIOB_2T_ARRAYLENGTH;
 radiob_array_table = rtl8192de_radiob_2tarray;
 if (rtlpriv->efuse.internal_pa_5g[0]) {
  radioa_arraylen = RADIOA_2T_INT_PA_ARRAYLENGTH;
  radioa_array_table = rtl8192de_radioa_2t_int_paarray;
 }
 if (rtlpriv->efuse.internal_pa_5g[1]) {
  radiob_arraylen = RADIOB_2T_INT_PA_ARRAYLENGTH;
  radiob_array_table = rtl8192de_radiob_2t_int_paarray;
 }
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "PHY_ConfigRFWithHeaderFile() Radio_A:Rtl819XRadioA_1TArray\n");
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "PHY_ConfigRFWithHeaderFile() Radio_B:Rtl819XRadioB_1TArray\n");
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Radio No %x\n", rfpath);




 if ((content == radiob_txt) && (rfpath == 131)) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    " ===> althougth Path A, we load radiob.txt\n");
  radioa_arraylen = radiob_arraylen;
  radioa_array_table = radiob_array_table;
 }
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
 }
 return 1;
}
