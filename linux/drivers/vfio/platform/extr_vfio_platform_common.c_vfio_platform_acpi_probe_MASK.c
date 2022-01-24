#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfio_platform_device {int /*<<< orphan*/  acpihid; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 scalar_t__ acpi_disabled ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vfio_platform_device *vdev,
				    struct device *dev)
{
	struct acpi_device *adev;

	if (acpi_disabled)
		return -ENOENT;

	adev = FUNC0(dev);
	if (!adev) {
		FUNC3(dev, "ACPI companion device not found for %s\n",
			vdev->name);
		return -ENODEV;
	}

#ifdef CONFIG_ACPI
	vdev->acpihid = acpi_device_hid(adev);
#endif
	return FUNC1(!vdev->acpihid) ? -EINVAL : 0;
}