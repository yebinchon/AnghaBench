#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int /*<<< orphan*/  dev; TYPE_1__* driver_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  work; int /*<<< orphan*/  led_classdev; } ;
struct TYPE_8__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {TYPE_4__ ac; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  init; struct acpi_device* bus_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_MDPS_CLASS ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  delayed_set_status_worker ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hp_accel_i8042_filter ; 
 TYPE_6__ hpled_led ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ lis3_dev ; 
 int /*<<< orphan*/  lis3lv02d_acpi_init ; 
 int /*<<< orphan*/  lis3lv02d_acpi_read ; 
 int /*<<< orphan*/  lis3lv02d_acpi_write ; 
 TYPE_4__ lis3lv02d_axis_normal ; 
 int /*<<< orphan*/  lis3lv02d_dmi_ids ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_device*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct acpi_device *device)
{
	int ret;

	if (!device)
		return -EINVAL;

	lis3_dev.bus_priv = device;
	lis3_dev.init = lis3lv02d_acpi_init;
	lis3_dev.read = lis3lv02d_acpi_read;
	lis3_dev.write = lis3lv02d_acpi_write;
	FUNC13(FUNC2(device), DRIVER_NAME);
	FUNC13(FUNC1(device), ACPI_MDPS_CLASS);
	device->driver_data = &lis3_dev;

	/* obtain IRQ number of our device from ACPI */
	FUNC8(device);

	/* If possible use a "standard" axes order */
	if (lis3_dev.ac.x && lis3_dev.ac.y && lis3_dev.ac.z) {
		FUNC12("Using custom axes %d,%d,%d\n",
			lis3_dev.ac.x, lis3_dev.ac.y, lis3_dev.ac.z);
	} else if (FUNC4(lis3lv02d_dmi_ids) == 0) {
		FUNC12("laptop model unknown, using default axes configuration\n");
		lis3_dev.ac = lis3lv02d_axis_normal;
	}

	/* call the core layer do its init */
	ret = FUNC9(&lis3_dev);
	if (ret)
		return ret;

	/* filter to remove HPQ6000 accelerometer data
	 * from keyboard bus stream */
	if (FUNC14(FUNC3(&device->dev), "HPQ6000"))
		FUNC6(hp_accel_i8042_filter);

	FUNC0(&hpled_led.work, delayed_set_status_worker);
	ret = FUNC7(NULL, &hpled_led.led_classdev);
	if (ret) {
		FUNC10(&lis3_dev);
		FUNC11(&lis3_dev);
		FUNC5(&hpled_led.work);
		return ret;
	}

	return ret;
}