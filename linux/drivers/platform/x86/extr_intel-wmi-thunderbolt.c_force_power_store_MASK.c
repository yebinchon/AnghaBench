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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_buffer {int length; int* pointer; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 int /*<<< orphan*/  INTEL_WMI_THUNDERBOLT_GUID ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct acpi_buffer*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct acpi_buffer input;
	acpi_status status;
	u8 mode;

	input.length = sizeof(u8);
	input.pointer = &mode;
	mode = FUNC2(buf[0]);
	FUNC1(dev, "force_power: storing %#x\n", mode);
	if (mode == 0 || mode == 1) {
		status = FUNC3(INTEL_WMI_THUNDERBOLT_GUID, 0, 1,
					     &input, NULL);
		if (FUNC0(status)) {
			FUNC1(dev, "force_power: failed to evaluate ACPI method\n");
			return -ENODEV;
		}
	} else {
		FUNC1(dev, "force_power: unsupported mode\n");
		return -EINVAL;
	}
	return count;
}