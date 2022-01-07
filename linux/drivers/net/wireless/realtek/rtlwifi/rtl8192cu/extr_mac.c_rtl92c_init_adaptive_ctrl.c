
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int RATE_BITMAP_ALL ;
 int RATE_RRSR_CCK_ONLY_1M ;
 int REG_RL ;
 int REG_RRSR ;
 int REG_SPEC_SIFS ;
 int _LRL (int) ;
 int _SPEC_SIFS_CCK (int) ;
 int _SPEC_SIFS_OFDM (int) ;
 int _SRL (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92c_init_adaptive_ctrl(struct ieee80211_hw *hw)
{
 u16 value16;
 u32 value32;
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 value32 = rtl_read_dword(rtlpriv, REG_RRSR);
 value32 &= ~RATE_BITMAP_ALL;
 value32 |= RATE_RRSR_CCK_ONLY_1M;
 rtl_write_dword(rtlpriv, REG_RRSR, value32);

 value16 = _SPEC_SIFS_CCK(0x10) | _SPEC_SIFS_OFDM(0x10);
 rtl_write_word(rtlpriv, REG_SPEC_SIFS, value16);

 value16 = _LRL(0x30) | _SRL(0x30);
 rtl_write_dword(rtlpriv, REG_RL, value16);
}
