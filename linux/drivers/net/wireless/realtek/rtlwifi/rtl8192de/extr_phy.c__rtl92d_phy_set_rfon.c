
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_APSD_CTRL ;
 int REG_SPS0_CTRL ;
 int REG_SYS_FUNC_EN ;
 int REG_TXPAUSE ;
 scalar_t__ SINGLEMAC_SINGLEPHY ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92d_phy_set_rfon(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);



 if (rtlpriv->rtlhal.macphymode == SINGLEMAC_SINGLEPHY)
  rtl_write_byte(rtlpriv, REG_SPS0_CTRL, 0x2b);

 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE3);


 rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x00);


 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);
 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE3);

 rtl_write_byte(rtlpriv, REG_TXPAUSE, 0x00);
}
