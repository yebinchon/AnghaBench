#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {scalar_t__ bridge_d3; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  valid; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ wakeup; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct pci_dev* FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct device *dev)
{
	struct pci_dev *pci_dev = FUNC8(dev);
	struct acpi_device *adev = FUNC0(dev);

	if (!adev)
		return;

	FUNC6(pci_dev, adev->handle);
	FUNC7(pci_dev);

	FUNC5(adev, pci_dev);
	if (!adev->wakeup.flags.valid)
		return;

	FUNC3(dev, true);
	/*
	 * For bridges that can do D3 we enable wake automatically (as
	 * we do for the power management itself in that case). The
	 * reason is that the bridge may have additional methods such as
	 * _DSW that need to be called.
	 */
	if (pci_dev->bridge_d3)
		FUNC4(dev);

	FUNC2(pci_dev, false);
	FUNC1(adev, dev);
}