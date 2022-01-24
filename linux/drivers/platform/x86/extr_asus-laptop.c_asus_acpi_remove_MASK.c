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
struct asus_laptop {struct asus_laptop* name; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct asus_laptop* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC3 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC4 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC5 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC6 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC7 (struct asus_laptop*) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device)
{
	struct asus_laptop *asus = FUNC0(device);

	FUNC1(asus);
	FUNC5(asus);
	FUNC3(asus);
	FUNC2(asus);
	FUNC7(asus);
	FUNC4(asus);

	FUNC6(asus->name);
	FUNC6(asus);
	return 0;
}