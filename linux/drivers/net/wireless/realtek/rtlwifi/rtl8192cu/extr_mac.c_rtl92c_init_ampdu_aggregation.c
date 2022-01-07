
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_AGGLEN_LMT ;
 int REG_AGGR_BREAK_TIME ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int,int) ;

void rtl92c_init_ampdu_aggregation(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_dword(rtlpriv, REG_AGGLEN_LMT, 0x99997631);
 rtl_write_byte(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);

 rtl_write_word(rtlpriv, 0x4CA, 0x0708);
}
