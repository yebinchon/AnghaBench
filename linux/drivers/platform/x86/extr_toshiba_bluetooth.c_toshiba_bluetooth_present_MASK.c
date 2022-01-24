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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(acpi_handle handle)
{
	acpi_status result;
	u64 bt_present;

	/*
	 * Some Toshiba laptops may have a fake TOS6205 device in
	 * their ACPI BIOS, so query the _STA method to see if there
	 * is really anything there.
	 */
	result = FUNC1(handle, "_STA", NULL, &bt_present);
	if (FUNC0(result)) {
		FUNC2("ACPI call to query Bluetooth presence failed\n");
		return -ENXIO;
	}

	if (!bt_present) {
		FUNC3("Bluetooth device not present\n");
		return -ENODEV;
	}

	return 0;
}