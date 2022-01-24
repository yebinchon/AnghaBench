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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int GPIOMUX_EN ; 
 int GPIOSEL_GPIO ; 
 int /*<<< orphan*/  GPIO_IO_SEL ; 
 int HAL_8192S_HW_GPIO_OFF_MASK ; 
 int /*<<< orphan*/  MAC_PINMUX_CFG ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u8 u1tmp;

	/* The following config GPIO function */
	FUNC2(rtlpriv, MAC_PINMUX_CFG, (GPIOMUX_EN | GPIOSEL_GPIO));
	u1tmp = FUNC1(rtlpriv, GPIO_IO_SEL);

	/* config GPIO3 to input */
	u1tmp &= HAL_8192S_HW_GPIO_OFF_MASK;
	FUNC2(rtlpriv, GPIO_IO_SEL, u1tmp);

}