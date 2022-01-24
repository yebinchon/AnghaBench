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
struct twl_rtc {int wake_enabled; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RTC_INTERRUPTS_REG_IT_ALARM_M ; 
 struct twl_rtc* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct twl_rtc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct twl_rtc*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, unsigned enabled)
{
	struct platform_device *pdev = FUNC7(dev);
	struct twl_rtc *twl_rtc = FUNC0(dev);
	int irq = FUNC5(pdev, 0);
	int ret;

	if (enabled) {
		ret = FUNC6(twl_rtc,
				      BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
		if (FUNC1(dev) && !twl_rtc->wake_enabled) {
			FUNC3(irq);
			twl_rtc->wake_enabled = true;
		}
	} else {
		ret = FUNC4(twl_rtc,
				       BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
		if (twl_rtc->wake_enabled) {
			FUNC2(irq);
			twl_rtc->wake_enabled = false;
		}
	}

	return ret;
}