#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_led {int ledpin; int ledon; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_LED ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  LEDCFG ; 
#define  LED_PIN_GPIO0 130 
#define  LED_PIN_LED0 129 
#define  LED_PIN_LED1 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ieee80211_hw *hw, struct rtl_led *pled)
{
	u8 ledcfg;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC0(rtlpriv, COMP_LED, DBG_LOUD, "LedAddr:%X ledpin=%d\n",
		 LEDCFG, pled->ledpin);

	ledcfg = FUNC3(rtlpriv, LEDCFG);

	switch (pled->ledpin) {
	case LED_PIN_GPIO0:
		break;
	case LED_PIN_LED0:
		FUNC4(rtlpriv, LEDCFG, ledcfg & 0xf0);
		break;
	case LED_PIN_LED1:
		FUNC4(rtlpriv, LEDCFG, ledcfg & 0x0f);
		break;
	default:
		FUNC1("switch case %#x not processed\n",
		       pled->ledpin);
		break;
	}
	pled->ledon = true;
}