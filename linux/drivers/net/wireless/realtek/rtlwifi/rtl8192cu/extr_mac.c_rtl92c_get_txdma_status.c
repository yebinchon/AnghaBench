
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_TXDMA_STATUS ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

u32 rtl92c_get_txdma_status(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 return rtl_read_dword(rtlpriv, REG_TXDMA_STATUS);
}
