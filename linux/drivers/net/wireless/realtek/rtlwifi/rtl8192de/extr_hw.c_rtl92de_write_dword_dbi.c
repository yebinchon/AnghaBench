
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int REG_DBI_CTRL ;
 int REG_DBI_FLAG ;
 int REG_DBI_WDATA ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92de_write_dword_dbi(struct ieee80211_hw *hw,
        u16 offset, u32 value, u8 direct)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_word(rtlpriv, REG_DBI_CTRL, ((offset & 0xFFC) | 0xF000));
 rtl_write_dword(rtlpriv, REG_DBI_WDATA, value);
 rtl_write_byte(rtlpriv, REG_DBI_FLAG, BIT(0) | direct);
}
