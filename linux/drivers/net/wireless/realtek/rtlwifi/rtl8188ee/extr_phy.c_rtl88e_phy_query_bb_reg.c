
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_RF ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,...) ;
 int _rtl88e_phy_calculate_bit_shift (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int) ;

u32 rtl88e_phy_query_bb_reg(struct ieee80211_hw *hw, u32 regaddr, u32 bitmask)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 returnvalue, originalvalue, bitshift;

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "regaddr(%#x), bitmask(%#x)\n", regaddr, bitmask);
 originalvalue = rtl_read_dword(rtlpriv, regaddr);
 bitshift = _rtl88e_phy_calculate_bit_shift(bitmask);
 returnvalue = (originalvalue & bitmask) >> bitshift;

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "BBR MASK=0x%x Addr[0x%x]=0x%x\n", bitmask,
   regaddr, originalvalue);

 return returnvalue;

}
