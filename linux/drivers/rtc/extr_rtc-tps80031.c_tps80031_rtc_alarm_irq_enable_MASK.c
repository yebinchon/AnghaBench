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
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_ALARM_INT ; 
 int /*<<< orphan*/  TPS80031_RTC_INTERRUPTS_REG ; 
 int /*<<< orphan*/  TPS80031_SLAVE_ID1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					 unsigned int enable)
{
	int ret;

	if (enable)
		ret = FUNC2(dev->parent, TPS80031_SLAVE_ID1,
				TPS80031_RTC_INTERRUPTS_REG, ENABLE_ALARM_INT);
	else
		ret = FUNC1(dev->parent, TPS80031_SLAVE_ID1,
				TPS80031_RTC_INTERRUPTS_REG, ENABLE_ALARM_INT);
	if (ret < 0) {
		FUNC0(dev, "Update on RTC_INT failed, err = %d\n", ret);
		return ret;
	}
	return 0;
}