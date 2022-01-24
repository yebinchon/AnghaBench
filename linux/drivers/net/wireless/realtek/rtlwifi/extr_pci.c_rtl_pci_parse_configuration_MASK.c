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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct rtl_priv {int dummy; } ;
struct TYPE_2__ {int linkctrl_reg; } ;
struct rtl_pci_priv {TYPE_1__ ndis_adapter; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct rtl_pci_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev,
					struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_pci_priv *pcipriv = FUNC5(hw);

	u8 tmp;
	u16 linkctrl_reg;

	/*Link Control Register */
	FUNC4(pdev, PCI_EXP_LNKCTL, &linkctrl_reg);
	pcipriv->ndis_adapter.linkctrl_reg = (u8)linkctrl_reg;

	FUNC1(rtlpriv, COMP_INIT, DBG_TRACE, "Link Control Register =%x\n",
		 pcipriv->ndis_adapter.linkctrl_reg);

	FUNC2(pdev, 0x98, &tmp);
	tmp |= FUNC0(4);
	FUNC3(pdev, 0x98, tmp);

	tmp = 0x17;
	FUNC3(pdev, 0x70f, tmp);
}