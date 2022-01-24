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
struct rtc_wkalrm {int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct cpcap_time {int /*<<< orphan*/  tod1; int /*<<< orphan*/  tod2; int /*<<< orphan*/  day; } ;
struct cpcap_rtc {int alarm_enabled; int /*<<< orphan*/  alarm_irq; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_REG_DAYA ; 
 int /*<<< orphan*/  CPCAP_REG_TODA1 ; 
 int /*<<< orphan*/  CPCAP_REG_TODA2 ; 
 int /*<<< orphan*/  DAY_MASK ; 
 int /*<<< orphan*/  TOD1_MASK ; 
 int /*<<< orphan*/  TOD2_MASK ; 
 struct cpcap_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpcap_time*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct cpcap_rtc *rtc;
	struct cpcap_time cpcap_tm;
	int ret;

	rtc = FUNC0(dev);

	FUNC4(&cpcap_tm, &alrm->time);

	if (rtc->alarm_enabled)
		FUNC1(rtc->alarm_irq);

	ret = FUNC3(rtc->regmap, CPCAP_REG_DAYA, DAY_MASK,
				 cpcap_tm.day);
	ret |= FUNC3(rtc->regmap, CPCAP_REG_TODA2, TOD2_MASK,
				  cpcap_tm.tod2);
	ret |= FUNC3(rtc->regmap, CPCAP_REG_TODA1, TOD1_MASK,
				  cpcap_tm.tod1);

	if (!ret) {
		FUNC2(rtc->alarm_irq);
		rtc->alarm_enabled = true;
	}

	return ret;
}