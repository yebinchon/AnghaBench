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
struct pci_dev {int wakeup_prepared; } ;
typedef  int /*<<< orphan*/  pci_power_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, pci_power_t state, bool enable)
{
	int ret = 0;

	/*
	 * Bridges that are not power-manageable directly only signal
	 * wakeup on behalf of subordinate devices which is set up
	 * elsewhere, so skip them. However, bridges that are
	 * power-manageable may signal wakeup for themselves (for example,
	 * on a hotplug event) and they need to be covered here.
	 */
	if (!FUNC2(dev))
		return 0;

	/* Don't do the same thing twice in a row for one device. */
	if (!!enable == !!dev->wakeup_prepared)
		return 0;

	/*
	 * According to "PCI System Architecture" 4th ed. by Tom Shanley & Don
	 * Anderson we should be doing PME# wake enable followed by ACPI wake
	 * enable.  To disable wake-up we call the platform first, for symmetry.
	 */

	if (enable) {
		int error;

		if (FUNC1(dev, state))
			FUNC0(dev, true);
		else
			ret = 1;
		error = FUNC3(dev, true);
		if (ret)
			ret = error;
		if (!ret)
			dev->wakeup_prepared = true;
	} else {
		FUNC3(dev, false);
		FUNC0(dev, false);
		dev->wakeup_prepared = false;
	}

	return ret;
}