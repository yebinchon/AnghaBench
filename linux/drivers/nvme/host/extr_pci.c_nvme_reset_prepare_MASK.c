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
struct nvme_dev {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nvme_dev* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct nvme_dev *dev = FUNC2(pdev);

	/*
	 * We don't need to check the return value from waiting for the reset
	 * state as pci_dev device lock is held, making it impossible to race
	 * with ->remove().
	 */
	FUNC0(dev, false);
	FUNC1(&dev->ctrl);
}