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
struct pm860x_rtc_info {int /*<<< orphan*/  i2c; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALARM_EN ; 
 int /*<<< orphan*/  PM8607_RTC1 ; 
 struct pm860x_rtc_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int enabled)
{
	struct pm860x_rtc_info *info = FUNC0(dev);

	if (enabled)
		FUNC1(info->i2c, PM8607_RTC1, ALARM_EN, ALARM_EN);
	else
		FUNC1(info->i2c, PM8607_RTC1, ALARM_EN, 0);
	return 0;
}