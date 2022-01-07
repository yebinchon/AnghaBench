
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int MAX_MSS_DENSITY_1T ;
 int MAX_MSS_DENSITY_2T ;
 int REG_AMPDU_MIN_SPACE ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;

void rtl92c_set_min_space(struct ieee80211_hw *hw, bool is2T)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 value = is2T ? MAX_MSS_DENSITY_2T : MAX_MSS_DENSITY_1T;

 rtl_write_byte(rtlpriv, REG_AMPDU_MIN_SPACE, value);
}
