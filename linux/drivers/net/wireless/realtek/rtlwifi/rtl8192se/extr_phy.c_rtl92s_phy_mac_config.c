
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int MAC_2T_ARRAYLENGTH ;
 int* rtl8192semac_2t_array ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;

bool rtl92s_phy_mac_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;
 u32 arraylength;
 u32 *ptrarray;

 arraylength = MAC_2T_ARRAYLENGTH;
 ptrarray = rtl8192semac_2t_array;

 for (i = 0; i < arraylength; i = i + 2)
  rtl_write_byte(rtlpriv, ptrarray[i], (u8)ptrarray[i + 1]);

 return 1;
}
