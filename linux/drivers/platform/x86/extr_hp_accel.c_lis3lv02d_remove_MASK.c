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
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  led_classdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hp_accel_i8042_filter ; 
 TYPE_1__ hpled_led ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lis3_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct acpi_device *device)
{
	if (!device)
		return -EINVAL;

	FUNC1(hp_accel_i8042_filter);
	FUNC3(&lis3_dev);
	FUNC4(&lis3_dev);

	FUNC2(&hpled_led.led_classdev);
	FUNC0(&hpled_led.work);

	return FUNC5(&lis3_dev);
}