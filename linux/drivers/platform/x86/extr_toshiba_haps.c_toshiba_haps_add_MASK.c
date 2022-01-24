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
struct toshiba_haps_dev {int protection_level; struct acpi_device* acpi_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; int /*<<< orphan*/  handle; struct toshiba_haps_dev* driver_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct toshiba_haps_dev*) ; 
 int /*<<< orphan*/  haps_attr_group ; 
 struct toshiba_haps_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct toshiba_haps_dev* toshiba_haps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct acpi_device *acpi_dev)
{
	struct toshiba_haps_dev *haps;
	int ret;

	if (toshiba_haps)
		return -EBUSY;

	if (!FUNC4(acpi_dev->handle))
		return -ENODEV;

	FUNC2("Toshiba HDD Active Protection Sensor device\n");

	haps = FUNC1(sizeof(struct toshiba_haps_dev), GFP_KERNEL);
	if (!haps)
		return -ENOMEM;

	haps->acpi_dev = acpi_dev;
	haps->protection_level = 2;
	acpi_dev->driver_data = haps;
	FUNC0(&acpi_dev->dev, haps);

	/* Set the protection level, currently at level 2 (Medium) */
	ret = FUNC5(acpi_dev->handle, 2);
	if (ret != 0)
		return ret;

	ret = FUNC3(&acpi_dev->dev.kobj, &haps_attr_group);
	if (ret)
		return ret;

	toshiba_haps = haps;

	return 0;
}