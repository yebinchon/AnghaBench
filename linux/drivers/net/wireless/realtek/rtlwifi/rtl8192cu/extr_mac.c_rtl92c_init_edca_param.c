
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ REG_EDCA_VO_PARAM ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;

void rtl92c_init_edca_param(struct ieee80211_hw *hw,
       u16 queue, u16 txop, u8 cw_min, u8 cw_max, u8 aifs)
{



 u32 value;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 value = (u32)aifs;
 value |= ((u32)cw_min & 0xF) << 8;
 value |= ((u32)cw_max & 0xF) << 12;
 value |= (u32)txop << 16;

 rtl_write_dword(rtlpriv, (REG_EDCA_VO_PARAM + (queue * 4)), value);
}
