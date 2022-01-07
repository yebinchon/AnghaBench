
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int* RTL8188EEMAC_1T_ARRAY ;
 int RTL8188EEMAC_1T_ARRAYLEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;

__attribute__((used)) static bool _rtl88e_phy_config_mac_with_headerfile(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;
 u32 arraylength;
 u32 *ptrarray;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Read Rtl8188EMACPHY_Array\n");
 arraylength = RTL8188EEMAC_1T_ARRAYLEN;
 ptrarray = RTL8188EEMAC_1T_ARRAY;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "Img:RTL8188EEMAC_1T_ARRAY LEN %d\n", arraylength);
 for (i = 0; i < arraylength; i = i + 2)
  rtl_write_byte(rtlpriv, ptrarray[i], (u8)ptrarray[i + 1]);
 return 1;
}
