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
struct input_dev {TYPE_1__ dev; int /*<<< orphan*/  swbit; int /*<<< orphan*/  evbit; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *inputdev)
{
	unsigned long long val = 0;
	struct acpi_device *acpi;

	FUNC4(EV_SW, inputdev->evbit);
	FUNC4(SW_TABLET_MODE, inputdev->swbit);

	acpi = FUNC5(inputdev->dev.parent);
	if (FUNC0(FUNC1(acpi->handle, &val))) {
		FUNC2(inputdev, SW_TABLET_MODE, !val);
		FUNC3(inputdev);
	}
}