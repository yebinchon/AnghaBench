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
struct rtl_priv {int /*<<< orphan*/  max_fw_size; } ;
struct rtl_pci {int irq_enabled; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ INTA_MASK ; 
 struct rtl_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv;
	struct rtl_pci *rtlpci;

	rtlpriv = FUNC2(hw);
	/* if firmware not available, no interrupts */
	if (!rtlpriv || !rtlpriv->max_fw_size)
		return;
	rtlpci = FUNC0(FUNC1(hw));
	FUNC3(rtlpriv, INTA_MASK, 0);
	FUNC3(rtlpriv, INTA_MASK + 4, 0);
	rtlpci->irq_enabled = false;
}