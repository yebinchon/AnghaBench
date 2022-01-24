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
struct led_classdev {int /*<<< orphan*/  dev; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_KEYBOARD_BACKLIGHT_READ ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum led_brightness
FUNC3(struct led_classdev *cdev)
{
	unsigned long long brightness;
	acpi_status status;

	status = FUNC1(NULL, ACPI_KEYBOARD_BACKLIGHT_READ,
				       NULL, &brightness);
	if (FUNC0(status)) {
		FUNC2(cdev->dev, "Error getting keyboard LED value: %d\n",
			status);
		return -EIO;
	}

	return brightness;
}