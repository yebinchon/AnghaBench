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
struct backlight_device {int dummy; } ;
struct asus_laptop {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  METHOD_BRIGHTNESS_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 
 struct asus_laptop* FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bd)
{
	struct asus_laptop *asus = FUNC2(bd);
	unsigned long long value;
	acpi_status rv;

	rv = FUNC1(asus->handle, METHOD_BRIGHTNESS_GET,
				   NULL, &value);
	if (FUNC0(rv)) {
		FUNC3("Error reading brightness\n");
		return 0;
	}

	return value;
}