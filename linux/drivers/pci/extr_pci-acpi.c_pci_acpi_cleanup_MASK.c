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
struct TYPE_3__ {scalar_t__ valid; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ wakeup; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct acpi_device *adev = FUNC0(dev);
	struct pci_dev *pci_dev = FUNC5(dev);

	if (!adev)
		return;

	FUNC4(adev);
	if (adev->wakeup.flags.valid) {
		FUNC1(adev, dev);
		if (pci_dev->bridge_d3)
			FUNC3(dev);

		FUNC2(dev, false);
	}
}