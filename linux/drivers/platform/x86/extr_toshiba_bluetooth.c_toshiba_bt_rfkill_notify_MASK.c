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
typedef  int /*<<< orphan*/  u32 ;
struct toshiba_bluetooth_dev {int /*<<< orphan*/  killswitch; int /*<<< orphan*/  rfk; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct toshiba_bluetooth_dev* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct toshiba_bluetooth_dev*) ; 

__attribute__((used)) static void FUNC3(struct acpi_device *device, u32 event)
{
	struct toshiba_bluetooth_dev *bt_dev = FUNC0(device);

	if (FUNC2(bt_dev))
		return;

	FUNC1(bt_dev->rfk, !bt_dev->killswitch);
}