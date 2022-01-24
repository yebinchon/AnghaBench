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
struct TYPE_2__ {int /*<<< orphan*/  iolen; int /*<<< orphan*/  iostart; } ;

/* Variables and functions */
 int /*<<< orphan*/  apple_backlight_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* hw_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *dev)
{
	FUNC0(apple_backlight_device);

	FUNC1(hw_data->iostart, hw_data->iolen);
	hw_data = NULL;
	return 0;
}