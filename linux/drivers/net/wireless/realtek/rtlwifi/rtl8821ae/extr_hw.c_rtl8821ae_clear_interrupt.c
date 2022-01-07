
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_HISR ;
 int REG_HISRE ;
 int REG_HSISR ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;

__attribute__((used)) static void rtl8821ae_clear_interrupt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 tmp = rtl_read_dword(rtlpriv, REG_HISR);

 rtl_write_dword(rtlpriv, REG_HISR, tmp);

 tmp = rtl_read_dword(rtlpriv, REG_HISRE);
 rtl_write_dword(rtlpriv, REG_HISRE, tmp);

 tmp = rtl_read_dword(rtlpriv, REG_HSISR);
 rtl_write_dword(rtlpriv, REG_HSISR, tmp);
}
