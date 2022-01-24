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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reset_work; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvme_dev* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	struct nvme_dev *dev = FUNC1(pdev);

	FUNC0(&dev->ctrl.reset_work);
}