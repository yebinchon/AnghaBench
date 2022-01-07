
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int ERFOFF ;
 int ERFON ;
 int GPIOMUX_EN ;
 int GPIOSEL_GPIO ;
 int GPIO_IN_SE ;
 int GPIO_IO_SEL ;
 int HAL_8192S_HW_GPIO_OFF_BIT ;
 int HAL_8192S_HW_GPIO_OFF_MASK ;
 int MAC_PINMUX_CFG ;
 int mdelay (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

__attribute__((used)) static u8 _rtl92se_rf_onoff_detect(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 u1tmp;
 u8 retval = ERFON;


 rtl_write_byte(rtlpriv, MAC_PINMUX_CFG, (GPIOMUX_EN | GPIOSEL_GPIO));
 u1tmp = rtl_read_byte(rtlpriv, GPIO_IO_SEL);


 u1tmp &= HAL_8192S_HW_GPIO_OFF_MASK;
 rtl_write_byte(rtlpriv, GPIO_IO_SEL, u1tmp);



 mdelay(10);


 u1tmp = rtl_read_byte(rtlpriv, GPIO_IN_SE);
 retval = (u1tmp & HAL_8192S_HW_GPIO_OFF_BIT) ? ERFON : ERFOFF;

 return retval;
}
