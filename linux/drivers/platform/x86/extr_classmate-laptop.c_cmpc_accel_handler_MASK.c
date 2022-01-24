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
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned char*,unsigned char*) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct acpi_device *dev, u32 event)
{
	if (event == 0x81) {
		unsigned char x, y, z;
		acpi_status status;

		status = FUNC1(dev->handle, &x, &y, &z);
		if (FUNC0(status)) {
			struct input_dev *inputdev = FUNC2(&dev->dev);

			FUNC3(inputdev, ABS_X, x);
			FUNC3(inputdev, ABS_Y, y);
			FUNC3(inputdev, ABS_Z, z);
			FUNC4(inputdev);
		}
	}
}