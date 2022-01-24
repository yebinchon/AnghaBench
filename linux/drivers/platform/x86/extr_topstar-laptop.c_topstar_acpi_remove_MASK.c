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
struct topstar_laptop {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct topstar_laptop* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct topstar_laptop*) ; 
 scalar_t__ led_workaround ; 
 int /*<<< orphan*/  FUNC2 (struct topstar_laptop*) ; 
 int /*<<< orphan*/  FUNC3 (struct topstar_laptop*) ; 
 int /*<<< orphan*/  FUNC4 (struct topstar_laptop*) ; 
 int /*<<< orphan*/  FUNC5 (struct topstar_laptop*) ; 

__attribute__((used)) static int FUNC6(struct acpi_device *device)
{
	struct topstar_laptop *topstar = FUNC0(device);

	if (led_workaround)
		FUNC4(topstar);

	FUNC3(topstar);
	FUNC5(topstar);
	FUNC2(topstar);

	FUNC1(topstar);
	return 0;
}