
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl92s_phy_check_ephy_switchready(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 delay = 100;
 u8 regu1;

 regu1 = rtl_read_byte(rtlpriv, 0x554);
 while ((regu1 & BIT(5)) && (delay > 0)) {
  regu1 = rtl_read_byte(rtlpriv, 0x554);
  delay--;


  udelay(50);
 }
}
