
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int ) ;

__attribute__((used)) static inline void rtl_write_byte_with_val32(struct ieee80211_hw *hw,
          u32 addr, u32 val8)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, addr, (u8)val8);
}
