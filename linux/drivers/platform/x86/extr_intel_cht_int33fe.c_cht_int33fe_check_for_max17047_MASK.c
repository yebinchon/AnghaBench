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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 char* FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct i2c_client **max17047 = data;
	struct acpi_device *adev;
	const char *hid;

	adev = FUNC0(dev);
	if (!adev)
		return 0;

	hid = FUNC1(adev);

	/* The MAX17047 ACPI node doesn't have an UID, so we don't check that */
	if (FUNC2(hid, "MAX17047"))
		return 0;

	*max17047 = FUNC3(dev);
	return 1;
}