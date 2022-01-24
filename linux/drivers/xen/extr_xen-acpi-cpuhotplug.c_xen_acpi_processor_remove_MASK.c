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
struct acpi_processor {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_processor* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_processor*) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device)
{
	struct acpi_processor *pr;

	if (!device)
		return -EINVAL;

	pr = FUNC0(device);
	if (!pr)
		return -EINVAL;

	FUNC1(pr);
	return 0;
}