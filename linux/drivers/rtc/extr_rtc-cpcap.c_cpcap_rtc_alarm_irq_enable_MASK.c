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
struct cpcap_rtc {unsigned int alarm_enabled; int /*<<< orphan*/  alarm_irq; } ;

/* Variables and functions */
 struct cpcap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int enabled)
{
	struct cpcap_rtc *rtc = FUNC0(dev);

	if (rtc->alarm_enabled == enabled)
		return 0;

	if (enabled)
		FUNC2(rtc->alarm_irq);
	else
		FUNC1(rtc->alarm_irq);

	rtc->alarm_enabled = !!enabled;

	return 0;
}