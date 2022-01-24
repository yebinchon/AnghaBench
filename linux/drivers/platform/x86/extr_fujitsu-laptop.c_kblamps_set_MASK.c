#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct led_classdev {TYPE_1__* dev; } ;
struct acpi_device {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC_LEDS ; 
 int /*<<< orphan*/  FUNC_LED_OFF ; 
 int /*<<< orphan*/  FUNC_LED_ON ; 
 int /*<<< orphan*/  KEYBOARD_LAMPS ; 
 int LED_FULL ; 
 int FUNC0 (struct acpi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct led_classdev *cdev,
		       enum led_brightness brightness)
{
	struct acpi_device *device = FUNC1(cdev->dev->parent);

	if (brightness >= LED_FULL)
		return FUNC0(device, FUNC_LEDS, 0x1, KEYBOARD_LAMPS,
				      FUNC_LED_ON);
	else
		return FUNC0(device, FUNC_LEDS, 0x1, KEYBOARD_LAMPS,
				      FUNC_LED_OFF);
}