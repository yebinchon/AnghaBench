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
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pci_power_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct pci_dev *pci_dev, pci_power_t state, bool enable)
{
	if (enable && !FUNC1(&pci_dev->dev))
		return -EINVAL;

	return FUNC0(pci_dev, state, enable);
}