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
struct toshiba_bluetooth_dev {int /*<<< orphan*/  rfk; int /*<<< orphan*/  killswitch; struct acpi_device* acpi_dev; } ;
struct acpi_device {int /*<<< orphan*/  dev; struct toshiba_bluetooth_dev* driver_data; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct toshiba_bluetooth_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct toshiba_bluetooth_dev*) ; 
 struct toshiba_bluetooth_dev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  rfk_ops ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct toshiba_bluetooth_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct toshiba_bluetooth_dev*) ; 

__attribute__((used)) static int FUNC11(struct acpi_device *device)
{
	struct toshiba_bluetooth_dev *bt_dev;
	int result;

	result = FUNC9(device->handle);
	if (result)
		return result;

	FUNC4("Toshiba ACPI Bluetooth device driver\n");

	bt_dev = FUNC2(sizeof(*bt_dev), GFP_KERNEL);
	if (!bt_dev)
		return -ENOMEM;
	bt_dev->acpi_dev = device;
	device->driver_data = bt_dev;
	FUNC0(&device->dev, bt_dev);

	result = FUNC10(bt_dev);
	if (result) {
		FUNC1(bt_dev);
		return result;
	}

	bt_dev->rfk = FUNC5("Toshiba Bluetooth",
				   &device->dev,
				   RFKILL_TYPE_BLUETOOTH,
				   &rfk_ops,
				   bt_dev);
	if (!bt_dev->rfk) {
		FUNC3("Unable to allocate rfkill device\n");
		FUNC1(bt_dev);
		return -ENOMEM;
	}

	FUNC8(bt_dev->rfk, !bt_dev->killswitch);

	result = FUNC7(bt_dev->rfk);
	if (result) {
		FUNC3("Unable to register rfkill device\n");
		FUNC6(bt_dev->rfk);
		FUNC1(bt_dev);
	}

	return result;
}