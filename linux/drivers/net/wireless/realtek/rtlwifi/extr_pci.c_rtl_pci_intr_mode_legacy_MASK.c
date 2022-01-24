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
struct rtl_pci_priv {int dummy; } ;
struct rtl_pci {int using_msi; TYPE_1__* pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int COMP_INIT ; 
 int COMP_INTR ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _rtl_pci_interrupt ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC2 (struct rtl_pci_priv*) ; 
 struct rtl_pci_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_pci_priv *pcipriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC2(pcipriv);
	int ret;

	ret = FUNC1(rtlpci->pdev->irq, &_rtl_pci_interrupt,
			  IRQF_SHARED, KBUILD_MODNAME, hw);
	if (ret < 0)
		return ret;

	rtlpci->using_msi = false;
	FUNC0(rtlpriv, COMP_INIT | COMP_INTR, DBG_DMESG,
		 "Pin-based Interrupt Mode!\n");
	return 0;
}