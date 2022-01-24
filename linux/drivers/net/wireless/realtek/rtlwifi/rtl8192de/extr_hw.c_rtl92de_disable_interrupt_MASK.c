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
struct rtl_priv {int dummy; } ;
struct rtl_pci {TYPE_1__* pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMR8190_DISABLED ; 
 int /*<<< orphan*/  REG_HIMR ; 
 int /*<<< orphan*/  REG_HIMRE ; 
 struct rtl_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_pci *rtlpci = FUNC0(FUNC1(hw));

	FUNC3(rtlpriv, REG_HIMR, IMR8190_DISABLED);
	FUNC3(rtlpriv, REG_HIMRE, IMR8190_DISABLED);
	FUNC4(rtlpci->pdev->irq);
}