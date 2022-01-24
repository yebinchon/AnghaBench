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
struct rtc_test_data {unsigned int alarm_en; int /*<<< orphan*/  alarm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rtc_test_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int enable)
{
	struct rtc_test_data *rtd = FUNC2(dev);

	rtd->alarm_en = enable;
	if (enable)
		FUNC0(&rtd->alarm);
	else
		FUNC1(&rtd->alarm);

	return 0;
}