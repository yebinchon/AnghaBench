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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct cpcap_time {int /*<<< orphan*/  tod1; int /*<<< orphan*/  tod2; int /*<<< orphan*/  day; } ;
struct cpcap_rtc {scalar_t__ vendor; int /*<<< orphan*/  alarm_irq; scalar_t__ alarm_enabled; int /*<<< orphan*/  update_irq; scalar_t__ update_enabled; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_REG_DAY ; 
 int /*<<< orphan*/  CPCAP_REG_TOD1 ; 
 int /*<<< orphan*/  CPCAP_REG_TOD2 ; 
 scalar_t__ CPCAP_VENDOR_ST ; 
 int /*<<< orphan*/  DAY_MASK ; 
 int /*<<< orphan*/  TOD1_MASK ; 
 int /*<<< orphan*/  TOD2_MASK ; 
 struct cpcap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpcap_time*,struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct cpcap_rtc *rtc;
	struct cpcap_time cpcap_tm;
	int ret = 0;

	rtc = FUNC0(dev);

	FUNC4(&cpcap_tm, tm);

	if (rtc->alarm_enabled)
		FUNC1(rtc->alarm_irq);
	if (rtc->update_enabled)
		FUNC1(rtc->update_irq);

	if (rtc->vendor == CPCAP_VENDOR_ST) {
		/* The TOD1 and TOD2 registers MUST be written in this order
		 * for the change to properly set.
		 */
		ret |= FUNC3(rtc->regmap, CPCAP_REG_TOD1,
					  TOD1_MASK, cpcap_tm.tod1);
		ret |= FUNC3(rtc->regmap, CPCAP_REG_TOD2,
					  TOD2_MASK, cpcap_tm.tod2);
		ret |= FUNC3(rtc->regmap, CPCAP_REG_DAY,
					  DAY_MASK, cpcap_tm.day);
	} else {
		/* Clearing the upper lower 8 bits of the TOD guarantees that
		 * the upper half of TOD (TOD2) will not increment for 0xFF RTC
		 * ticks (255 seconds).  During this time we can safely write
		 * to DAY, TOD2, then TOD1 (in that order) and expect RTC to be
		 * synchronized to the exact time requested upon the final write
		 * to TOD1.
		 */
		ret |= FUNC3(rtc->regmap, CPCAP_REG_TOD1,
					  TOD1_MASK, 0);
		ret |= FUNC3(rtc->regmap, CPCAP_REG_DAY,
					  DAY_MASK, cpcap_tm.day);
		ret |= FUNC3(rtc->regmap, CPCAP_REG_TOD2,
					  TOD2_MASK, cpcap_tm.tod2);
		ret |= FUNC3(rtc->regmap, CPCAP_REG_TOD1,
					  TOD1_MASK, cpcap_tm.tod1);
	}

	if (rtc->update_enabled)
		FUNC2(rtc->update_irq);
	if (rtc->alarm_enabled)
		FUNC2(rtc->alarm_irq);

	return ret;
}