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
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_RFKILL ; 
 struct input_dev* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct acpi_device *adev, u32 event)
{
	struct input_dev *idev = FUNC0(adev);

	FUNC1(&adev->dev, "event=%#x\n", event);
	if (event != 0x80) {
		FUNC2(&adev->dev, "Unknown SMKB event: %#x\n", event);
		return;
	}
	FUNC3(idev, KEY_RFKILL, 1);
	FUNC3(idev, KEY_RFKILL, 0);
	FUNC4(idev);
}