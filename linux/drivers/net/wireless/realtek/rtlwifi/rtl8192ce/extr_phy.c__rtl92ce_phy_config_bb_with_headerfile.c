
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int AGCTAB_1TARRAYLENGTH ;
 int AGCTAB_2TARRAYLENGTH ;
 scalar_t__ BASEBAND_CONFIG_AGC_TAB ;
 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 int COMP_INIT ;
 int DBG_TRACE ;
 scalar_t__ IS_92C_SERIAL (int ) ;
 int MASKDWORD ;
 int PHY_REG_1TARRAY_LENGTH ;
 int PHY_REG_2TARRAY_LENGTH ;
 int * RTL8192CEAGCTAB_1TARRAY ;
 int * RTL8192CEAGCTAB_2TARRAY ;
 int * RTL8192CEPHY_REG_1TARRAY ;
 int * RTL8192CEPHY_REG_2TARRAY ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ) ;
 int rtl_addr_delay (int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int ) ;
 int udelay (int) ;

bool _rtl92ce_phy_config_bb_with_headerfile(struct ieee80211_hw *hw,
         u8 configtype)
{
 int i;
 u32 *phy_regarray_table;
 u32 *agctab_array_table;
 u16 phy_reg_arraylen, agctab_arraylen;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (IS_92C_SERIAL(rtlhal->version)) {
  agctab_arraylen = AGCTAB_2TARRAYLENGTH;
  agctab_array_table = RTL8192CEAGCTAB_2TARRAY;
  phy_reg_arraylen = PHY_REG_2TARRAY_LENGTH;
  phy_regarray_table = RTL8192CEPHY_REG_2TARRAY;
 } else {
  agctab_arraylen = AGCTAB_1TARRAYLENGTH;
  agctab_array_table = RTL8192CEAGCTAB_1TARRAY;
  phy_reg_arraylen = PHY_REG_1TARRAY_LENGTH;
  phy_regarray_table = RTL8192CEPHY_REG_1TARRAY;
 }
 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  for (i = 0; i < phy_reg_arraylen; i = i + 2) {
   rtl_addr_delay(phy_regarray_table[i]);
   rtl_set_bbreg(hw, phy_regarray_table[i], MASKDWORD,
          phy_regarray_table[i + 1]);
   udelay(1);
   RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
     "The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\n",
     phy_regarray_table[i],
     phy_regarray_table[i + 1]);
  }
 } else if (configtype == BASEBAND_CONFIG_AGC_TAB) {
  for (i = 0; i < agctab_arraylen; i = i + 2) {
   rtl_set_bbreg(hw, agctab_array_table[i], MASKDWORD,
          agctab_array_table[i + 1]);
   udelay(1);
   RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
     "The agctab_array_table[0] is %x Rtl819XPHY_REGArray[1] is %x\n",
     agctab_array_table[i],
     agctab_array_table[i + 1]);
  }
 }
 return 1;
}
