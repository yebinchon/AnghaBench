
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_led {int ledpin; int ledon; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_LED ;
 int DBG_LOUD ;
 int LEDCFG ;



 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,int) ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void rtl92se_sw_led_on(struct ieee80211_hw *hw, struct rtl_led *pled)
{
 u8 ledcfg;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RT_TRACE(rtlpriv, COMP_LED, DBG_LOUD, "LedAddr:%X ledpin=%d\n",
   LEDCFG, pled->ledpin);

 ledcfg = rtl_read_byte(rtlpriv, LEDCFG);

 switch (pled->ledpin) {
 case 130:
  break;
 case 129:
  rtl_write_byte(rtlpriv, LEDCFG, ledcfg & 0xf0);
  break;
 case 128:
  rtl_write_byte(rtlpriv, LEDCFG, ledcfg & 0x0f);
  break;
 default:
  pr_err("switch case %#x not processed\n",
         pled->ledpin);
  break;
 }
 pled->ledon = 1;
}
