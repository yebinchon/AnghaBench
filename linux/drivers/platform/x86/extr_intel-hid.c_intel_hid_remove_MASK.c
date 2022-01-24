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
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  notify_handler ; 

__attribute__((used)) static int FUNC5(struct platform_device *device)
{
	acpi_handle handle = FUNC0(&device->dev);

	FUNC2(&device->dev, false);
	FUNC1(handle, ACPI_DEVICE_NOTIFY, notify_handler);
	FUNC4(&device->dev, false);
	FUNC3(&device->dev, false);

	/*
	 * Even if we failed to shut off the event stream, we can still
	 * safely detach from the device.
	 */
	return 0;
}