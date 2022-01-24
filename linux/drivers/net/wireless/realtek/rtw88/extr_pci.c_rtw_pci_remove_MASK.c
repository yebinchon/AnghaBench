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
struct rtw_pci {int dummy; } ;
struct rtw_dev {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,struct rtw_pci*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct ieee80211_hw *hw = FUNC1(pdev);
	struct rtw_dev *rtwdev;
	struct rtw_pci *rtwpci;

	if (!hw)
		return;

	rtwdev = hw->priv;
	rtwpci = (struct rtw_pci *)rtwdev->priv;

	FUNC7(rtwdev, hw);
	FUNC5(rtwdev, rtwpci);
	FUNC4(rtwdev, pdev);
	FUNC3(rtwdev, pdev);
	FUNC6(rtwdev, pdev);
	FUNC2(rtwdev);
	FUNC0(hw);
}