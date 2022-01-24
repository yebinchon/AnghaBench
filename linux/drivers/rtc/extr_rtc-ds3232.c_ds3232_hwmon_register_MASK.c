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
struct ds3232 {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RTC_DRV_DS3232_HWMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ds3232* FUNC4 (struct device*) ; 
 struct device* FUNC5 (struct device*,char const*,struct ds3232*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ds3232_hwmon_chip_info ; 

__attribute__((used)) static void FUNC6(struct device *dev, const char *name)
{
	struct ds3232 *ds3232 = FUNC4(dev);
	struct device *hwmon_dev;

	if (!FUNC0(CONFIG_RTC_DRV_DS3232_HWMON))
		return;

	hwmon_dev = FUNC5(dev, name, ds3232,
							&ds3232_hwmon_chip_info,
							NULL);
	if (FUNC1(hwmon_dev)) {
		FUNC3(dev, "unable to register hwmon device %ld\n",
			FUNC2(hwmon_dev));
	}
}