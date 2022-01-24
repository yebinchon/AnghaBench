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
struct device {int dummy; } ;
struct as3722_rtc {int irq_enable; int /*<<< orphan*/  alarm_irq; } ;

/* Variables and functions */
 struct as3722_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		unsigned int enabled)
{
	struct as3722_rtc *as3722_rtc = FUNC0(dev);

	if (enabled && !as3722_rtc->irq_enable) {
		FUNC2(as3722_rtc->alarm_irq);
		as3722_rtc->irq_enable = true;
	} else if (!enabled && as3722_rtc->irq_enable)  {
		FUNC1(as3722_rtc->alarm_irq);
		as3722_rtc->irq_enable = false;
	}
	return 0;
}