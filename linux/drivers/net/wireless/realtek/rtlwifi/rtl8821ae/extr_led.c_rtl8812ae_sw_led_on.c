
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_led {int ledon; int ledpin; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_LED ;
 int DBG_LOUD ;



 int REG_LEDCFG1 ;
 int REG_LEDCFG2 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void rtl8812ae_sw_led_on(struct ieee80211_hw *hw, struct rtl_led *pled)
{
 u16 ledreg = REG_LEDCFG1;
 u8 ledcfg = 0;
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
   "In SwLedOn, LedAddr:%X LEDPIN=%d\n",
   ledreg, pled->ledpin);

 ledcfg = rtl_read_byte(rtlpriv, ledreg);
 ledcfg |= BIT(5);
 ledcfg &= ~(BIT(7) | BIT(6) | BIT(3) | BIT(2) | BIT(1) | BIT(0));

 rtl_write_byte(rtlpriv, ledreg, ledcfg);
 pled->ledon = 1;
}
