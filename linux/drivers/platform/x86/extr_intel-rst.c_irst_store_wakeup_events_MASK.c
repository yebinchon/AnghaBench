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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct acpi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct acpi_device *acpi;
	acpi_status status;
	unsigned long value;
	int error;

	acpi = FUNC3(dev);

	error = FUNC2(buf, 0, &value);
	if (error)
		return error;

	status = FUNC1(acpi->handle, "SFFS", value);
	if (FUNC0(status))
		return -EINVAL;

	return count;
}