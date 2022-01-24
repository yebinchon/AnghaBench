#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
struct gasket_internal_desc {struct gasket_driver_desc* driver_desc; } ;
struct gasket_driver_desc {TYPE_1__* bar_descriptions; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct gasket_dev {TYPE_3__* bar_data; TYPE_4__* pci_dev; int /*<<< orphan*/  dev; TYPE_2__ dev_info; struct gasket_internal_desc* internal_desc; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_8__ {scalar_t__ length_bytes; scalar_t__ phys_base; int /*<<< orphan*/  virt_base; } ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ PCI_BAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gasket_dev *gasket_dev, int bar_num)
{
	struct gasket_internal_desc *internal_desc = gasket_dev->internal_desc;
	const struct gasket_driver_desc *driver_desc =
		internal_desc->driver_desc;
	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
	int ret;

	if (desc_bytes == 0)
		return 0;

	if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR) {
		/* not PCI: skip this entry */
		return 0;
	}
	/*
	 * pci_resource_start and pci_resource_len return a "resource_size_t",
	 * which is safely castable to ulong (which itself is the arg to
	 * request_mem_region).
	 */
	gasket_dev->bar_data[bar_num].phys_base =
		(ulong)FUNC7(gasket_dev->pci_dev, bar_num);
	if (!gasket_dev->bar_data[bar_num].phys_base) {
		FUNC1(gasket_dev->dev, "Cannot get BAR%u base address\n",
			bar_num);
		return -EINVAL;
	}

	gasket_dev->bar_data[bar_num].length_bytes =
		(ulong)FUNC6(gasket_dev->pci_dev, bar_num);
	if (gasket_dev->bar_data[bar_num].length_bytes < desc_bytes) {
		FUNC1(gasket_dev->dev,
			"PCI BAR %u space is too small: %lu; expected >= %lu\n",
			bar_num, gasket_dev->bar_data[bar_num].length_bytes,
			desc_bytes);
		return -ENOMEM;
	}

	if (!FUNC9(gasket_dev->bar_data[bar_num].phys_base,
				gasket_dev->bar_data[bar_num].length_bytes,
				gasket_dev->dev_info.name)) {
		FUNC1(gasket_dev->dev,
			"Cannot get BAR %d memory region %p\n",
			bar_num, &gasket_dev->pci_dev->resource[bar_num]);
		return -EINVAL;
	}

	gasket_dev->bar_data[bar_num].virt_base =
		FUNC4(gasket_dev->bar_data[bar_num].phys_base,
				gasket_dev->bar_data[bar_num].length_bytes);
	if (!gasket_dev->bar_data[bar_num].virt_base) {
		FUNC1(gasket_dev->dev,
			"Cannot remap BAR %d memory region %p\n",
			bar_num, &gasket_dev->pci_dev->resource[bar_num]);
		ret = -ENOMEM;
		goto fail;
	}

	FUNC3(&gasket_dev->pci_dev->dev, FUNC0(64));
	FUNC2(&gasket_dev->pci_dev->dev, FUNC0(64));

	return 0;

fail:
	FUNC5(gasket_dev->bar_data[bar_num].virt_base);
	FUNC8(gasket_dev->bar_data[bar_num].phys_base,
			   gasket_dev->bar_data[bar_num].length_bytes);
	return ret;
}