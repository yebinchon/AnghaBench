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
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_USAGE_SENSOR_TIME ; 
 struct hid_sensor_hub_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_sensor_hub_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct hid_sensor_hub_device *hsdev = FUNC0(&pdev->dev);

	FUNC1(hsdev);
	FUNC2(hsdev, HID_USAGE_SENSOR_TIME);

	return 0;
}