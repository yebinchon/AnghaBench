
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int led_opendrain; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_led {int ledpin; int ledon; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_LED ;
 int DBG_LOUD ;



 int REG_LEDCFG2 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int) ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void rtl92de_sw_led_off(struct ieee80211_hw *hw, struct rtl_led *pled)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 ledcfg;

 RT_TRACE(rtlpriv, COMP_LED, DBG_LOUD, "LedAddr:%X ledpin=%d\n",
   REG_LEDCFG2, pled->ledpin);

 ledcfg = rtl_read_byte(rtlpriv, REG_LEDCFG2);

 switch (pled->ledpin) {
 case 130:
  break;
 case 129:
  ledcfg &= 0xf0;
  if (rtlpriv->ledctl.led_opendrain)
   rtl_write_byte(rtlpriv, REG_LEDCFG2,
           (ledcfg | BIT(1) | BIT(5) | BIT(6)));
  else
   rtl_write_byte(rtlpriv, REG_LEDCFG2,
           (ledcfg | BIT(3) | BIT(5) | BIT(6)));
  break;
 case 128:
  ledcfg &= 0x0f;
  rtl_write_byte(rtlpriv, REG_LEDCFG2, (ledcfg | BIT(3)));
  break;
 default:
  pr_err("switch case %#x not processed\n",
         pled->ledpin);
  break;
 }
 pled->ledon = 0;
}
