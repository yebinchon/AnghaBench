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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct cmpc_accel {int /*<<< orphan*/  inputdev_state; int /*<<< orphan*/  g_select; int /*<<< orphan*/  sensitivity; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMPC_ACCEL_DEV_STATE_OPEN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cmpc_accel* FUNC4 (TYPE_1__*) ; 
 struct acpi_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_dev *input)
{
	struct acpi_device *acpi;
	struct cmpc_accel *accel;

	acpi = FUNC5(input->dev.parent);
	accel = FUNC4(&input->dev);

	FUNC2(acpi->handle, accel->sensitivity);
	FUNC1(acpi->handle, accel->g_select);

	if (FUNC0(FUNC3(acpi->handle))) {
		accel->inputdev_state = CMPC_ACCEL_DEV_STATE_OPEN;
		return 0;
	}
	return -EIO;
}