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
struct mc13xxx_rtc {int valid; int /*<<< orphan*/  mc13xxx; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13XXX_IRQ_RTCRST ; 
 int /*<<< orphan*/  MC13XXX_RTCDAY ; 
 int /*<<< orphan*/  MC13XXX_RTCTOD ; 
 int /*<<< orphan*/  MC13XXX_RTCTODA ; 
 unsigned int SEC_PER_DAY ; 
 struct mc13xxx_rtc* FUNC0 (struct device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtc_time*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_time *tm)
{
	struct mc13xxx_rtc *priv = FUNC0(dev);
	unsigned int seconds, days;
	unsigned int alarmseconds;
	int ret;

	days = FUNC1(FUNC8(tm), SEC_PER_DAY, &seconds);

	FUNC4(priv->mc13xxx);

	/*
	 * temporarily invalidate alarm to prevent triggering it when the day is
	 * already updated while the time isn't yet.
	 */
	ret = FUNC5(priv->mc13xxx, MC13XXX_RTCTODA, &alarmseconds);
	if (FUNC9(ret))
		goto out;

	if (alarmseconds < SEC_PER_DAY) {
		ret = FUNC6(priv->mc13xxx,
				MC13XXX_RTCTODA, 0x1ffff);
		if (FUNC9(ret))
			goto out;
	}

	/*
	 * write seconds=0 to prevent a day switch between writing days
	 * and seconds below
	 */
	ret = FUNC6(priv->mc13xxx, MC13XXX_RTCTOD, 0);
	if (FUNC9(ret))
		goto out;

	ret = FUNC6(priv->mc13xxx, MC13XXX_RTCDAY, days);
	if (FUNC9(ret))
		goto out;

	ret = FUNC6(priv->mc13xxx, MC13XXX_RTCTOD, seconds);
	if (FUNC9(ret))
		goto out;

	/* restore alarm */
	if (alarmseconds < SEC_PER_DAY) {
		ret = FUNC6(priv->mc13xxx,
				MC13XXX_RTCTODA, alarmseconds);
		if (FUNC9(ret))
			goto out;
	}

	if (!priv->valid) {
		ret = FUNC2(priv->mc13xxx, MC13XXX_IRQ_RTCRST);
		if (FUNC9(ret))
			goto out;

		ret = FUNC3(priv->mc13xxx, MC13XXX_IRQ_RTCRST);
	}

out:
	priv->valid = !ret;

	FUNC7(priv->mc13xxx);

	return ret;
}