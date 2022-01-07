
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ led_opendrain; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_led {int ledon; int ledpin; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_LED ;
 int DBG_LOUD ;



 int REG_LEDCFG1 ;
 int REG_LEDCFG2 ;
 int REG_MAC_PINMUX_CFG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

void rtl8812ae_sw_led_off(struct ieee80211_hw *hw, struct rtl_led *pled)
{
 u16 ledreg = REG_LEDCFG1;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 switch (pled->ledpin) {
 case 129:
  ledreg = REG_LEDCFG1;
  break;

 case 128:
  ledreg = REG_LEDCFG2;
  break;

 case 130:
 default:
  break;
 }

 RT_TRACE(rtlpriv, COMP_LED, DBG_LOUD,
   "In SwLedOff,LedAddr:%X LEDPIN=%d\n",
   ledreg, pled->ledpin);

 if (rtlpriv->ledctl.led_opendrain) {
  u8 ledcfg = rtl_read_byte(rtlpriv, ledreg);

  ledreg &= 0xd0;
  rtl_write_byte(rtlpriv, ledreg, (ledcfg | BIT(3)));


  ledcfg = rtl_read_byte(rtlpriv, REG_MAC_PINMUX_CFG);
  ledcfg &= 0xFE;
  rtl_write_byte(rtlpriv, REG_MAC_PINMUX_CFG, ledcfg);
 } else {
  rtl_write_byte(rtlpriv, ledreg, 0x28);
 }

 pled->ledon = 0;
}
