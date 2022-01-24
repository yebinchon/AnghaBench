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
struct TYPE_2__ {int version; scalar_t__ product; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct device {int dummy; } ;
struct acpi_device {struct input_dev* driver_data; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  chromeos_tbmc_open ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 struct input_dev* FUNC3 (struct device*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct acpi_device*) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *adev)
{
	struct input_dev *idev;
	struct device *dev = &adev->dev;
	int ret;

	idev = FUNC3(dev);
	if (!idev)
		return -ENOMEM;

	idev->name = "Tablet Mode Switch";
	idev->phys = FUNC0(adev);

	idev->id.bustype = BUS_HOST;
	idev->id.version = 1;
	idev->id.product = 0;
	idev->open = chromeos_tbmc_open;

	FUNC6(idev, adev);
	adev->driver_data = idev;

	FUNC5(idev, EV_SW, SW_TABLET_MODE);
	ret = FUNC4(idev);
	if (ret) {
		FUNC1(dev, "cannot register input device\n");
		return ret;
	}
	FUNC2(dev, true);
	return 0;
}