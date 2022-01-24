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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmpc_accel_acpi_driver ; 
 int /*<<< orphan*/  cmpc_accel_acpi_driver_v4 ; 
 int /*<<< orphan*/  cmpc_ipml_acpi_driver ; 
 int /*<<< orphan*/  cmpc_keys_acpi_driver ; 
 int /*<<< orphan*/  cmpc_tablet_acpi_driver ; 

__attribute__((used)) static int FUNC2(void)
{
	int r;

	r = FUNC0(&cmpc_keys_acpi_driver);
	if (r)
		goto failed_keys;

	r = FUNC0(&cmpc_ipml_acpi_driver);
	if (r)
		goto failed_bl;

	r = FUNC0(&cmpc_tablet_acpi_driver);
	if (r)
		goto failed_tablet;

	r = FUNC0(&cmpc_accel_acpi_driver);
	if (r)
		goto failed_accel;

	r = FUNC0(&cmpc_accel_acpi_driver_v4);
	if (r)
		goto failed_accel_v4;

	return r;

failed_accel_v4:
	FUNC1(&cmpc_accel_acpi_driver);

failed_accel:
	FUNC1(&cmpc_tablet_acpi_driver);

failed_tablet:
	FUNC1(&cmpc_ipml_acpi_driver);

failed_bl:
	FUNC1(&cmpc_keys_acpi_driver);

failed_keys:
	return r;
}