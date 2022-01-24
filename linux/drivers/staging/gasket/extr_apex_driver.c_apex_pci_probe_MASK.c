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
typedef  scalar_t__ ulong ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct gasket_dev {TYPE_1__ dev_info; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT ; 
 int /*<<< orphan*/  APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT ; 
 int /*<<< orphan*/  APEX_BAR_INDEX ; 
 int /*<<< orphan*/  APEX_RESET_DELAY ; 
 int APEX_RESET_RETRY ; 
 int ETIMEDOUT ; 
 scalar_t__ allow_power_save ; 
 int /*<<< orphan*/  FUNC0 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_dev*) ; 
 int /*<<< orphan*/  apex_sysfs_attrs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct gasket_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gasket_dev*) ; 
 int FUNC5 (struct pci_dev*,struct gasket_dev**) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pci_dev,
			  const struct pci_device_id *id)
{
	int ret;
	ulong page_table_ready, msix_table_ready;
	int retries = 0;
	struct gasket_dev *gasket_dev;

	ret = FUNC10(pci_dev);
	if (ret) {
		FUNC2(&pci_dev->dev, "error enabling PCI device\n");
		return ret;
	}

	FUNC12(pci_dev);

	ret = FUNC5(pci_dev, &gasket_dev);
	if (ret) {
		FUNC2(&pci_dev->dev, "error adding gasket device\n");
		FUNC9(pci_dev);
		return ret;
	}

	FUNC11(pci_dev, gasket_dev);
	FUNC1(gasket_dev);

	while (retries < APEX_RESET_RETRY) {
		page_table_ready =
			FUNC3(gasket_dev, APEX_BAR_INDEX,
					   APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_INIT);
		msix_table_ready =
			FUNC3(gasket_dev, APEX_BAR_INDEX,
					   APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE_INIT);
		if (page_table_ready && msix_table_ready)
			break;
		FUNC13(FUNC8(APEX_RESET_DELAY));
		retries++;
	}

	if (retries == APEX_RESET_RETRY) {
		if (!page_table_ready)
			FUNC2(gasket_dev->dev, "Page table init timed out\n");
		if (!msix_table_ready)
			FUNC2(gasket_dev->dev, "MSI-X table init timed out\n");
		ret = -ETIMEDOUT;
		goto remove_device;
	}

	ret = FUNC7(gasket_dev->dev_info.device,
					  apex_sysfs_attrs);
	if (ret)
		FUNC2(&pci_dev->dev, "error creating device sysfs entries\n");

	ret = FUNC4(gasket_dev);
	if (ret) {
		FUNC2(&pci_dev->dev, "error enabling gasket device\n");
		goto remove_device;
	}

	/* Place device in low power mode until opened */
	if (allow_power_save)
		FUNC0(gasket_dev);

	return 0;

remove_device:
	FUNC6(pci_dev);
	FUNC9(pci_dev);
	return ret;
}