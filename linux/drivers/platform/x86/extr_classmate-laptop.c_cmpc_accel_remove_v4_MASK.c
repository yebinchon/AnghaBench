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
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmpc_accel_g_select_attr_v4 ; 
 int /*<<< orphan*/  cmpc_accel_sensitivity_attr_v4 ; 
 int FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *acpi)
{
	FUNC1(&acpi->dev, &cmpc_accel_sensitivity_attr_v4);
	FUNC1(&acpi->dev, &cmpc_accel_g_select_attr_v4);
	return FUNC0(acpi);
}