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
struct rtl_pci_priv {int dummy; } ;
struct rtl_pci {scalar_t__ msi_support; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_hw*) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC2 (struct rtl_pci_priv*) ; 
 struct rtl_pci_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_pci_priv *pcipriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC2(pcipriv);
	int ret;

	if (rtlpci->msi_support) {
		ret = FUNC1(hw);
		if (ret < 0)
			ret = FUNC0(hw);
	} else {
		ret = FUNC0(hw);
	}
	return ret;
}