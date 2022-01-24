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
struct eeepc_laptop {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct eeepc_laptop* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC2 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC3 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC4 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC5 (struct eeepc_laptop*) ; 
 int /*<<< orphan*/  FUNC6 (struct eeepc_laptop*) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct eeepc_laptop *eeepc = FUNC0(device);

	FUNC1(eeepc);
	FUNC5(eeepc);
	FUNC2(eeepc);
	FUNC3(eeepc);
	FUNC4(eeepc);

	FUNC6(eeepc);
	return 0;
}