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
struct surface_button {int /*<<< orphan*/  input; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct surface_button* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct surface_button*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct surface_button *button = FUNC0(device);

	FUNC1(button->input);
	FUNC2(button);
	return 0;
}