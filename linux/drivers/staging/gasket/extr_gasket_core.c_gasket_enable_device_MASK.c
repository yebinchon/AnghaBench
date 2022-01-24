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
struct gasket_driver_desc {int num_page_tables; size_t page_table_bar_index; int /*<<< orphan*/  module; int /*<<< orphan*/  hardware_revision_cb; int /*<<< orphan*/ * page_table_configs; } ;
struct gasket_dev {int hardware_revision; scalar_t__ status; int /*<<< orphan*/  dev_info; int /*<<< orphan*/  dev; int /*<<< orphan*/ * page_table; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/ * bar_data; TYPE_1__* internal_desc; } ;
struct TYPE_2__ {struct gasket_driver_desc* driver_desc; } ;

/* Variables and functions */
 scalar_t__ GASKET_STATUS_DEAD ; 
 int FUNC0 (struct gasket_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gasket_file_ops ; 
 scalar_t__ FUNC4 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct gasket_dev*) ; 
 int FUNC6 (struct gasket_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct gasket_dev *gasket_dev)
{
	int tbl_idx;
	int ret;
	const struct gasket_driver_desc *driver_desc =
		gasket_dev->internal_desc->driver_desc;

	ret = FUNC6(gasket_dev);
	if (ret) {
		FUNC2(gasket_dev->dev,
			"Critical failure to allocate interrupts: %d\n", ret);
		FUNC5(gasket_dev);
		return ret;
	}

	for (tbl_idx = 0; tbl_idx < driver_desc->num_page_tables; tbl_idx++) {
		FUNC1(gasket_dev->dev, "Initializing page table %d.\n",
			tbl_idx);
		ret = FUNC7(&gasket_dev->page_table[tbl_idx],
					     &gasket_dev->bar_data[driver_desc->page_table_bar_index],
					     &driver_desc->page_table_configs[tbl_idx],
					     gasket_dev->dev,
					     gasket_dev->pci_dev);
		if (ret) {
			FUNC2(gasket_dev->dev,
				"Couldn't init page table %d: %d\n",
				tbl_idx, ret);
			return ret;
		}
		/*
		 * Make sure that the page table is clear and set to simple
		 * addresses.
		 */
		FUNC8(gasket_dev->page_table[tbl_idx]);
	}

	/*
	 * hardware_revision_cb returns a positive integer (the rev) if
	 * successful.)
	 */
	ret = FUNC0(gasket_dev,
					driver_desc->hardware_revision_cb);
	if (ret < 0) {
		FUNC2(gasket_dev->dev,
			"Error getting hardware revision: %d\n", ret);
		return ret;
	}
	gasket_dev->hardware_revision = ret;

	/* device_status_cb returns a device status, not an error code. */
	gasket_dev->status = FUNC4(gasket_dev);
	if (gasket_dev->status == GASKET_STATUS_DEAD)
		FUNC2(gasket_dev->dev, "Device reported as unhealthy.\n");

	ret = FUNC3(&gasket_dev->dev_info, &gasket_file_ops,
			      driver_desc->module);
	if (ret)
		return ret;

	return 0;
}