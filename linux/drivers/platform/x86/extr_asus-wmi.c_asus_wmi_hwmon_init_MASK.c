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
struct device {int dummy; } ;
struct asus_wmi {TYPE_1__* platform_device; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (struct device*,char*,struct asus_wmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwmon_attribute_groups ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct asus_wmi *asus)
{
	struct device *dev = &asus->platform_device->dev;
	struct device *hwmon;

	hwmon = FUNC2(dev, "asus", asus,
			hwmon_attribute_groups);

	if (FUNC0(hwmon)) {
		FUNC3("Could not register asus hwmon device\n");
		return FUNC1(hwmon);
	}
	return 0;
}