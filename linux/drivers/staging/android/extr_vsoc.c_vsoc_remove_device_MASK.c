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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int device_created; int irq_requested; int /*<<< orphan*/  vector; } ;
struct TYPE_5__ {int msix_enabled; int class_added; int cdev_added; int requested_regions; int enabled_device; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * regs; int /*<<< orphan*/ * kernel_mapped_shm; TYPE_1__* layout; scalar_t__ major; int /*<<< orphan*/  cdev; int /*<<< orphan*/  class; int /*<<< orphan*/ * regions; TYPE_3__* msix_entries; TYPE_3__* regions_data; } ;
struct TYPE_4__ {int region_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ vsoc_dev ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	int i;
	/*
	 * pdev is the first thing to be set on probe and the last thing
	 * to be cleared here. If it's NULL then there is no cleanup.
	 */
	if (!pdev || !vsoc_dev.dev)
		return;
	FUNC3(&pdev->dev, "remove_device\n");
	if (vsoc_dev.regions_data) {
		for (i = 0; i < vsoc_dev.layout->region_count; ++i) {
			if (vsoc_dev.regions_data[i].device_created) {
				FUNC4(vsoc_dev.class,
					       FUNC0(vsoc_dev.major, i));
				vsoc_dev.regions_data[i].device_created = false;
			}
			if (vsoc_dev.regions_data[i].irq_requested)
				FUNC5(vsoc_dev.msix_entries[i].vector, NULL);
			vsoc_dev.regions_data[i].irq_requested = false;
		}
		FUNC6(vsoc_dev.regions_data);
		vsoc_dev.regions_data = NULL;
	}
	if (vsoc_dev.msix_enabled) {
		FUNC8(pdev);
		vsoc_dev.msix_enabled = false;
	}
	FUNC6(vsoc_dev.msix_entries);
	vsoc_dev.msix_entries = NULL;
	vsoc_dev.regions = NULL;
	if (vsoc_dev.class_added) {
		FUNC2(vsoc_dev.class);
		vsoc_dev.class_added = false;
	}
	if (vsoc_dev.cdev_added) {
		FUNC1(&vsoc_dev.cdev);
		vsoc_dev.cdev_added = false;
	}
	if (vsoc_dev.major && vsoc_dev.layout) {
		FUNC11(FUNC0(vsoc_dev.major, 0),
					 vsoc_dev.layout->region_count);
		vsoc_dev.major = 0;
	}
	vsoc_dev.layout = NULL;
	if (vsoc_dev.kernel_mapped_shm) {
		FUNC9(pdev, vsoc_dev.kernel_mapped_shm);
		vsoc_dev.kernel_mapped_shm = NULL;
	}
	if (vsoc_dev.regs) {
		FUNC9(pdev, vsoc_dev.regs);
		vsoc_dev.regs = NULL;
	}
	if (vsoc_dev.requested_regions) {
		FUNC10(pdev);
		vsoc_dev.requested_regions = false;
	}
	if (vsoc_dev.enabled_device) {
		FUNC7(pdev);
		vsoc_dev.enabled_device = false;
	}
	/* Do this last: it indicates that the device is not initialized. */
	vsoc_dev.dev = NULL;
}