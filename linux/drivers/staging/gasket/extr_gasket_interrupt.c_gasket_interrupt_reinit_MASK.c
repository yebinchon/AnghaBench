#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gasket_dev {int /*<<< orphan*/  dev; TYPE_1__* interrupt_data; } ;
struct TYPE_3__ {int type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PCI_MSIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct gasket_dev*) ; 

int FUNC6(struct gasket_dev *gasket_dev)
{
	int ret;

	if (!gasket_dev->interrupt_data) {
		FUNC0(gasket_dev->dev,
			"Attempted to reinit uninitialized interrupt data\n");
		return -EINVAL;
	}

	switch (gasket_dev->interrupt_data->type) {
	case PCI_MSIX:
		FUNC3(gasket_dev->interrupt_data);
		ret = FUNC4(gasket_dev->interrupt_data);
		if (ret)
			break;
		FUNC2(gasket_dev);
		break;

	default:
		ret = -EINVAL;
	}

	if (ret) {
		/* Failing to setup interrupts will cause the device
		 * to report GASKET_STATUS_LAMED, but is not fatal.
		 */
		FUNC1(gasket_dev->dev, "Couldn't reinit interrupts: %d\n",
			 ret);
		return 0;
	}

	FUNC5(gasket_dev);

	return 0;
}