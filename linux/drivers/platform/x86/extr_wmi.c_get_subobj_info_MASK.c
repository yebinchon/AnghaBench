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
struct acpi_device_info {int dummy; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int EIO ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct acpi_device_info**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device_info*) ; 

__attribute__((used)) static int FUNC4(acpi_handle handle, const char *pathname,
			   struct acpi_device_info **info)
{
	struct acpi_device_info *dummy_info, **info_ptr;
	acpi_handle subobj_handle;
	acpi_status status;

	status = FUNC1(handle, (char *)pathname, &subobj_handle);
	if (status == AE_NOT_FOUND)
		return -ENOENT;
	else if (FUNC0(status))
		return -EIO;

	info_ptr = info ? info : &dummy_info;
	status = FUNC2(subobj_handle, info_ptr);
	if (FUNC0(status))
		return -EIO;

	if (!info)
		FUNC3(dummy_info);

	return 0;
}