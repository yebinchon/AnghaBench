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
struct pci_dev {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct pci_dev*) ; 
 int FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct ieee80211_hw *hw, struct pci_dev *pdev)
{
	int err;

	FUNC0(hw, pdev);

	err = FUNC1(hw);
	if (err) {
		FUNC2("tx ring initialization failed\n");
		return err;
	}

	return 0;
}