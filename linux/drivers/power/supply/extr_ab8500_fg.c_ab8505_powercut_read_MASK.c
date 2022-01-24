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
typedef  int u8 ;
struct power_supply {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ab8500_fg {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_RTC ; 
 int /*<<< orphan*/  AB8505_RTC_PCUT_CTL_STATUS_REG ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct power_supply* FUNC1 (struct device*) ; 
 struct ab8500_fg* FUNC2 (struct power_supply*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr,
				    char *buf)
{
	int ret;
	u8 reg_value;
	struct power_supply *psy = FUNC1(dev);
	struct ab8500_fg *di = FUNC2(psy);

	ret = FUNC0(di->dev, AB8500_RTC,
						AB8505_RTC_PCUT_CTL_STATUS_REG, &reg_value);

	if (ret < 0)
		goto fail;

	return FUNC3(buf, PAGE_SIZE, "%d\n", (reg_value & 0x1));

fail:
	return ret;
}