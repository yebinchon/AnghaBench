
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ during_mac0init_radiob; scalar_t__ during_mac1init_radioa; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_RF ;
 int DBG_TRACE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,...) ;
 int _rtl92d_phy_calculate_bit_shift (int) ;
 int rtl92de_read_dword_dbi (struct ieee80211_hw*,int ,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int) ;

u32 rtl92d_phy_query_bb_reg(struct ieee80211_hw *hw, u32 regaddr, u32 bitmask)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 u32 returnvalue, originalvalue, bitshift;

 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE, "regaddr(%#x), bitmask(%#x)\n",
   regaddr, bitmask);
 if (rtlhal->during_mac1init_radioa || rtlhal->during_mac0init_radiob) {
  u8 dbi_direct = 0;



  if (rtlhal->during_mac1init_radioa)
   dbi_direct = BIT(3);
  else if (rtlhal->during_mac0init_radiob)
   dbi_direct = BIT(3) | BIT(2);
  originalvalue = rtl92de_read_dword_dbi(hw, (u16)regaddr,
   dbi_direct);
 } else {
  originalvalue = rtl_read_dword(rtlpriv, regaddr);
 }
 bitshift = _rtl92d_phy_calculate_bit_shift(bitmask);
 returnvalue = (originalvalue & bitmask) >> bitshift;
 RT_TRACE(rtlpriv, COMP_RF, DBG_TRACE,
   "BBR MASK=0x%x Addr[0x%x]=0x%x\n",
   bitmask, regaddr, originalvalue);
 return returnvalue;
}
