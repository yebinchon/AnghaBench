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
struct pcf50633_rtc {unsigned int alarm_enabled; int /*<<< orphan*/  pcf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF50633_IRQ_ALARM ; 
 struct pcf50633_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct device *dev, unsigned int enabled)
{
	struct pcf50633_rtc *rtc = FUNC0(dev);
	int err;

	if (enabled)
		err = FUNC2(rtc->pcf, PCF50633_IRQ_ALARM);
	else
		err = FUNC1(rtc->pcf, PCF50633_IRQ_ALARM);

	if (err < 0)
		return err;

	rtc->alarm_enabled = enabled;

	return 0;
}