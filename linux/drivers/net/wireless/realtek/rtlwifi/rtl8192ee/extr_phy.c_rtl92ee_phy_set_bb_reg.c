
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_RF ;
 int DBG_TRACE ;
 int MASKDWORD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int) ;
 int _rtl92ee_phy_calculate_bit_shift (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

void rtl92ee_phy_set_bb_reg(struct ieee80211_hw *hw, u32 regaddr,
       u32 bitmask, u32 data)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 originalvalue, bitshift;

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), bitmask(%#x), data(%#x)\n",
    regaddr, bitmask, data);

 if (bitmask != MASKDWORD) {
  originalvalue = rtl_read_dword(rtlpriv, regaddr);
  bitshift = _rtl92ee_phy_calculate_bit_shift(bitmask);
  data = ((originalvalue & (~bitmask)) | (data << bitshift));
 }

 rtl_write_dword(rtlpriv, regaddr, data);

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), bitmask(%#x), data(%#x)\n",
    regaddr, bitmask, data);
}
