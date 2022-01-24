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
struct rtl_usb {int* irq_mask; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int* irq_mask; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtl_priv*) ; 
 int /*<<< orphan*/  REG_HIMR ; 
 int /*<<< orphan*/  REG_HIMRE ; 
 struct rtl_pci* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_usb* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC1(FUNC2(hw));
	struct rtl_usb *rtlusb = FUNC4(FUNC5(hw));

	if (FUNC0(rtlpriv)) {
		FUNC6(rtlpriv, REG_HIMR, rtlpci->irq_mask[0] &
				0xFFFFFFFF);
		FUNC6(rtlpriv, REG_HIMRE, rtlpci->irq_mask[1] &
				0xFFFFFFFF);
	} else {
		FUNC6(rtlpriv, REG_HIMR, rtlusb->irq_mask[0] &
				0xFFFFFFFF);
		FUNC6(rtlpriv, REG_HIMRE, rtlusb->irq_mask[1] &
				0xFFFFFFFF);
	}
}