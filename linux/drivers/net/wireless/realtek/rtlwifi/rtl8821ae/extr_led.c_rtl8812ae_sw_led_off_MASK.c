#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ led_opendrain; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_led {int ledon; int /*<<< orphan*/  ledpin; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_LED ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  LED_PIN_GPIO0 130 
#define  LED_PIN_LED0 129 
#define  LED_PIN_LED1 128 
 int REG_LEDCFG1 ; 
 int REG_LEDCFG2 ; 
 int REG_MAC_PINMUX_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 

void FUNC5(struct ieee80211_hw *hw, struct rtl_led *pled)
{
	u16 ledreg = REG_LEDCFG1;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	switch (pled->ledpin) {
	case LED_PIN_LED0:
		ledreg = REG_LEDCFG1;
		break;

	case LED_PIN_LED1:
		ledreg = REG_LEDCFG2;
		break;

	case LED_PIN_GPIO0:
	default:
		break;
	}

	FUNC1(rtlpriv, COMP_LED, DBG_LOUD,
		 "In SwLedOff,LedAddr:%X LEDPIN=%d\n",
		 ledreg, pled->ledpin);
	/*Open-drain arrangement for controlling the LED*/
	if (rtlpriv->ledctl.led_opendrain) {
		u8 ledcfg = FUNC3(rtlpriv, ledreg);

		ledreg &= 0xd0; /* Set to software control.*/
		FUNC4(rtlpriv, ledreg, (ledcfg | FUNC0(3)));

		/*Open-drain arrangement*/
		ledcfg = FUNC3(rtlpriv, REG_MAC_PINMUX_CFG);
		ledcfg &= 0xFE;/*Set GPIO[8] to input mode*/
		FUNC4(rtlpriv, REG_MAC_PINMUX_CFG, ledcfg);
	} else {
		FUNC4(rtlpriv, ledreg, 0x28);
	}

	pled->ledon = false;
}