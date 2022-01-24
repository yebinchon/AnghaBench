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
typedef  int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long*) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct acpi_device *dev, u32 event)
{
	unsigned long long val = 0;
	struct input_dev *inputdev = FUNC2(&dev->dev);

	if (event == 0x81) {
		if (FUNC0(FUNC1(dev->handle, &val))) {
			FUNC3(inputdev, SW_TABLET_MODE, !val);
			FUNC4(inputdev);
		}
	}
}