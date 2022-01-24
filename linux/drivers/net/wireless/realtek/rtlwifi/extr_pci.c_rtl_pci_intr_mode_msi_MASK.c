#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtl_priv {int dummy; } ;
struct rtl_pci_priv {int dummy; } ;
struct rtl_pci {int using_msi; TYPE_1__* pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int COMP_INIT ; 
 int COMP_INTR ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _rtl_pci_interrupt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC4 (struct rtl_pci_priv*) ; 
 struct rtl_pci_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_pci_priv *pcipriv = FUNC5(hw);
	struct rtl_pci *rtlpci = FUNC4(pcipriv);
	int ret;

	ret = FUNC2(rtlpci->pdev);
	if (ret < 0)
		return ret;

	ret = FUNC3(rtlpci->pdev->irq, &_rtl_pci_interrupt,
			  IRQF_SHARED, KBUILD_MODNAME, hw);
	if (ret < 0) {
		FUNC1(rtlpci->pdev);
		return ret;
	}

	rtlpci->using_msi = true;

	FUNC0(rtlpriv, COMP_INIT | COMP_INTR, DBG_DMESG,
		 "MSI Interrupt Mode!\n");
	return 0;
}