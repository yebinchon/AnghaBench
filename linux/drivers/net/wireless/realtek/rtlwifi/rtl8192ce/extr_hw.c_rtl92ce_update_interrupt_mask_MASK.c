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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int* irq_mask; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INTR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw,
				   u32 add_msr, u32 rm_msr)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));

	FUNC0(rtlpriv, COMP_INTR, DBG_LOUD, "add_msr:%x, rm_msr:%x\n",
		 add_msr, rm_msr);

	if (add_msr)
		rtlpci->irq_mask[0] |= add_msr;
	if (rm_msr)
		rtlpci->irq_mask[0] &= (~rm_msr);
	FUNC1(hw);
	FUNC2(hw);
}