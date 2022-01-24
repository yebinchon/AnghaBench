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
struct nvme_dev {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  remove_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_CTRL_DELETING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nvme_dev *dev)
{
	/*
	 * Set state to deleting now to avoid blocking nvme_wait_reset(), which
	 * may be holding this pci_dev's device lock.
	 */
	FUNC0(&dev->ctrl, NVME_CTRL_DELETING);
	FUNC2(&dev->ctrl);
	FUNC1(dev, false);
	FUNC3(&dev->ctrl);
	if (!FUNC5(nvme_wq, &dev->remove_work))
		FUNC4(&dev->ctrl);
}