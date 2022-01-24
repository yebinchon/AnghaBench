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
struct gasket_interrupt_data {int type; struct gasket_interrupt_data* eventfd_ctxs; void* interrupt_counts; scalar_t__ num_configured; int /*<<< orphan*/  pack_width; int /*<<< orphan*/  interrupt_bar_index; int /*<<< orphan*/  interrupts; int /*<<< orphan*/  num_interrupts; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  name; } ;
struct gasket_driver_desc {int interrupt_type; int /*<<< orphan*/  num_interrupts; int /*<<< orphan*/  interrupt_pack_width; int /*<<< orphan*/  interrupt_bar_index; int /*<<< orphan*/  interrupts; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct gasket_dev {TYPE_1__ dev_info; int /*<<< orphan*/  dev; int /*<<< orphan*/  pci_dev; struct gasket_interrupt_data* interrupt_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  PCI_MSIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gasket_dev*) ; 
 struct gasket_driver_desc* FUNC2 (struct gasket_dev*) ; 
 int FUNC3 (struct gasket_interrupt_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  interrupt_sysfs_attrs ; 
 void* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gasket_interrupt_data*) ; 
 struct gasket_interrupt_data* FUNC8 (int,int /*<<< orphan*/ ) ; 

int FUNC9(struct gasket_dev *gasket_dev)
{
	int ret;
	struct gasket_interrupt_data *interrupt_data;
	const struct gasket_driver_desc *driver_desc =
		FUNC2(gasket_dev);

	interrupt_data = FUNC8(sizeof(*interrupt_data), GFP_KERNEL);
	if (!interrupt_data)
		return -ENOMEM;
	gasket_dev->interrupt_data = interrupt_data;
	interrupt_data->name = driver_desc->name;
	interrupt_data->type = driver_desc->interrupt_type;
	interrupt_data->pci_dev = gasket_dev->pci_dev;
	interrupt_data->num_interrupts = driver_desc->num_interrupts;
	interrupt_data->interrupts = driver_desc->interrupts;
	interrupt_data->interrupt_bar_index = driver_desc->interrupt_bar_index;
	interrupt_data->pack_width = driver_desc->interrupt_pack_width;
	interrupt_data->num_configured = 0;

	interrupt_data->eventfd_ctxs =
		FUNC6(driver_desc->num_interrupts,
			sizeof(*interrupt_data->eventfd_ctxs), GFP_KERNEL);
	if (!interrupt_data->eventfd_ctxs) {
		FUNC7(interrupt_data);
		return -ENOMEM;
	}

	interrupt_data->interrupt_counts =
		FUNC6(driver_desc->num_interrupts,
			sizeof(*interrupt_data->interrupt_counts), GFP_KERNEL);
	if (!interrupt_data->interrupt_counts) {
		FUNC7(interrupt_data->eventfd_ctxs);
		FUNC7(interrupt_data);
		return -ENOMEM;
	}

	switch (interrupt_data->type) {
	case PCI_MSIX:
		ret = FUNC3(interrupt_data);
		if (ret)
			break;
		FUNC1(gasket_dev);
		break;

	default:
		ret = -EINVAL;
	}

	if (ret) {
		/* Failing to setup interrupts will cause the device to report
		 * GASKET_STATUS_LAMED. But it is not fatal.
		 */
		FUNC0(gasket_dev->dev,
			 "Couldn't initialize interrupts: %d\n", ret);
		return 0;
	}

	FUNC4(gasket_dev);
	FUNC5(gasket_dev->dev_info.device,
				    interrupt_sysfs_attrs);

	return 0;
}