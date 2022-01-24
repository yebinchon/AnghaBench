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
struct rtl_priv {int dummy; } ;
struct rtl_pci {int* irq_mask; int irq_enabled; int sys_irq_mask; scalar_t__ int_clear; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_HIMR ; 
 int /*<<< orphan*/  REG_HIMRE ; 
 int /*<<< orphan*/  REG_HSIMR ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC1(FUNC2(hw));

	if (rtlpci->int_clear)
		FUNC0(hw);/*clear it here first*/

	FUNC4(rtlpriv, REG_HIMR, rtlpci->irq_mask[0] & 0xFFFFFFFF);
	FUNC4(rtlpriv, REG_HIMRE, rtlpci->irq_mask[1] & 0xFFFFFFFF);
	rtlpci->irq_enabled = true;
	/* there are some C2H CMDs have been sent before
	system interrupt is enabled, e.g., C2H, CPWM.
	*So we need to clear all C2H events that FW has
	notified, otherwise FW won't schedule any commands anymore.
	*/
	/* rtl_write_byte(rtlpriv, REG_C2HEVT_CLEAR, 0); */
	/*enable system interrupt*/
	FUNC4(rtlpriv, REG_HSIMR, rtlpci->sys_irq_mask & 0xFFFFFFFF);
}