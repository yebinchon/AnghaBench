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
struct rtl_pci {int* irq_mask; int irq_enabled; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct rtl_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_pci *rtlpci = FUNC0(FUNC1(hw));

	FUNC3(rtlpriv, 0x3a8, rtlpci->irq_mask[0] & 0xFFFFFFFF);
	FUNC3(rtlpriv, 0x3ac, rtlpci->irq_mask[1] & 0xFFFFFFFF);
	rtlpci->irq_enabled = true;
}