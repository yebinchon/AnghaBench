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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(acpi_handle handle)
{
	acpi_status result;

	result = FUNC1(handle, "BTPF", NULL, NULL);
	if (FUNC0(result)) {
		FUNC2("Could not power OFF Bluetooth device\n");
		return -ENXIO;
	}

	result = FUNC1(handle, "DUSB", NULL, NULL);
	if (FUNC0(result)) {
		FUNC2("Could not detach USB Bluetooth device\n");
		return -ENXIO;
	}

	return 0;
}