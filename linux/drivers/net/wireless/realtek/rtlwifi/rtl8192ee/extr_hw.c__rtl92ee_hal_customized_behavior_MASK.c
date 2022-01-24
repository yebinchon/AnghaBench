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
struct TYPE_2__ {int led_opendrain; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_hal {int /*<<< orphan*/  oem_id; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_hal *rtlhal = FUNC1(FUNC2(hw));

	rtlpriv->ledctl.led_opendrain = true;

	FUNC0(rtlpriv, COMP_INIT, DBG_DMESG,
		 "RT Customized ID: 0x%02X\n", rtlhal->oem_id);
}