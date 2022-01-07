
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int GPIOMUX_EN ;
 int GPIOSEL_GPIO ;
 int GPIO_IO_SEL ;
 int HAL_8192S_HW_GPIO_OFF_MASK ;
 int MAC_PINMUX_CFG ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void rtl8192se_gpiobit3_cfg_inputmode(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 u1tmp;


 rtl_write_byte(rtlpriv, MAC_PINMUX_CFG, (GPIOMUX_EN | GPIOSEL_GPIO));
 u1tmp = rtl_read_byte(rtlpriv, GPIO_IO_SEL);


 u1tmp &= HAL_8192S_HW_GPIO_OFF_MASK;
 rtl_write_byte(rtlpriv, GPIO_IO_SEL, u1tmp);

}
