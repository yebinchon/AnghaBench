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
typedef  int /*<<< orphan*/  u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_led {int ledon; int /*<<< orphan*/  ledpin; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_LED ; 
 int /*<<< orphan*/  DBG_LOUD ; 
#define  LED_PIN_GPIO0 130 
#define  LED_PIN_LED0 129 
#define  LED_PIN_LED1 128 
 int /*<<< orphan*/  REG_LEDCFG1 ; 
 int /*<<< orphan*/  REG_LEDCFG2 ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ieee80211_hw *hw, struct rtl_led *pled)
{
	u16	ledreg = REG_LEDCFG1;
	u8	ledcfg = 0;
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
		 "In SwLedOn, LedAddr:%X LEDPIN=%d\n",
		 ledreg, pled->ledpin);

	ledcfg =  FUNC3(rtlpriv, ledreg);
	ledcfg |= FUNC0(5); /*Set 0x4c[21]*/
	ledcfg &= ~(FUNC0(7) | FUNC0(6) | FUNC0(3) | FUNC0(2) | FUNC0(1) | FUNC0(0));
		/*Clear 0x4c[23:22] and 0x4c[19:16]*/
	FUNC4(rtlpriv, ledreg, ledcfg); /*SW control led0 on.*/
	pled->ledon = true;
}