
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;


 int BCN_DMA_ATIME_INT_TIME ;
 int DRIVER_EARLY_INT_TIME ;
 scalar_t__ IS_NORMAL_CHIP (int ) ;
 int REG_BCNDMATIM ;
 int REG_BCNTCFG ;
 int REG_BCN_CTRL ;
 int REG_DRVERLYINT ;
 int REG_TBTT_PROHIBIT ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int ) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92cu_init_beacon_parameters(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);

 rtl_write_word(rtlpriv, REG_BCN_CTRL, 0x1010);


 rtl_write_word(rtlpriv, REG_TBTT_PROHIBIT, 0x6404);
 rtl_write_byte(rtlpriv, REG_DRVERLYINT, DRIVER_EARLY_INT_TIME);
 rtl_write_byte(rtlpriv, REG_BCNDMATIM, BCN_DMA_ATIME_INT_TIME);



 if (IS_NORMAL_CHIP(rtlhal->version))
  rtl_write_word(rtlpriv, REG_BCNTCFG, 0x660F);
 else
  rtl_write_word(rtlpriv, REG_BCNTCFG, 0x66FF);
}
