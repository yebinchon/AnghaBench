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
struct rtc_wkalrm {int /*<<< orphan*/  time; int /*<<< orphan*/  enabled; } ;
struct device {int dummy; } ;
struct cpcap_time {int /*<<< orphan*/  tod1; int /*<<< orphan*/  tod2; int /*<<< orphan*/  day; } ;
struct cpcap_rtc {int /*<<< orphan*/  regmap; int /*<<< orphan*/  alarm_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_REG_DAYA ; 
 int /*<<< orphan*/  CPCAP_REG_TODA1 ; 
 int /*<<< orphan*/  CPCAP_REG_TODA2 ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cpcap_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct cpcap_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct cpcap_rtc *rtc;
	struct cpcap_time cpcap_tm;
	int ret;

	rtc = FUNC2(dev);

	alrm->enabled = rtc->alarm_enabled;

	ret = FUNC3(rtc->regmap, CPCAP_REG_DAYA, &cpcap_tm.day);
	ret |= FUNC3(rtc->regmap, CPCAP_REG_TODA2, &cpcap_tm.tod2);
	ret |= FUNC3(rtc->regmap, CPCAP_REG_TODA1, &cpcap_tm.tod1);

	if (ret) {
		FUNC1(dev, "Failed to read time\n");
		return -EIO;
	}

	FUNC0(&alrm->time, &cpcap_tm);
	return FUNC4(&alrm->time);
}