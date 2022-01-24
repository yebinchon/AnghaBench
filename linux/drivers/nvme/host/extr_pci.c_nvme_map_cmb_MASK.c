#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {TYPE_2__* device; } ;
struct nvme_dev {int cmb_size; int cmbsz; int cmb_use_sqes; TYPE_1__ ctrl; void* cmbloc; int /*<<< orphan*/  bar; int /*<<< orphan*/  dev; } ;
typedef  int resource_size_t ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int NVME_CMBSZ_RDS ; 
 int NVME_CMBSZ_SQS ; 
 int NVME_CMBSZ_WDS ; 
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ NVME_REG_CMBLOC ; 
 scalar_t__ NVME_REG_CMBSZ ; 
 TYPE_3__ dev_attr_cmb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (struct nvme_dev*) ; 
 int FUNC4 (struct nvme_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int FUNC7 (struct pci_dev*,int) ; 
 void* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ use_cmb_sqes ; 

__attribute__((used)) static void FUNC11(struct nvme_dev *dev)
{
	u64 size, offset;
	resource_size_t bar_size;
	struct pci_dev *pdev = FUNC10(dev->dev);
	int bar;

	if (dev->cmb_size)
		return;

	dev->cmbsz = FUNC8(dev->bar + NVME_REG_CMBSZ);
	if (!dev->cmbsz)
		return;
	dev->cmbloc = FUNC8(dev->bar + NVME_REG_CMBLOC);

	size = FUNC4(dev) * FUNC3(dev);
	offset = FUNC4(dev) * FUNC1(dev->cmbloc);
	bar = FUNC0(dev->cmbloc);
	bar_size = FUNC7(pdev, bar);

	if (offset > bar_size)
		return;

	/*
	 * Controllers may support a CMB size larger than their BAR,
	 * for example, due to being behind a bridge. Reduce the CMB to
	 * the reported size of the BAR
	 */
	if (size > bar_size - offset)
		size = bar_size - offset;

	if (FUNC5(pdev, bar, size, offset)) {
		FUNC2(dev->ctrl.device,
			 "failed to register the CMB\n");
		return;
	}

	dev->cmb_size = size;
	dev->cmb_use_sqes = use_cmb_sqes && (dev->cmbsz & NVME_CMBSZ_SQS);

	if ((dev->cmbsz & (NVME_CMBSZ_WDS | NVME_CMBSZ_RDS)) ==
			(NVME_CMBSZ_WDS | NVME_CMBSZ_RDS))
		FUNC6(pdev, true);

	if (FUNC9(&dev->ctrl.device->kobj,
				    &dev_attr_cmb.attr, NULL))
		FUNC2(dev->ctrl.device,
			 "failed to add sysfs attribute for CMB\n");
}