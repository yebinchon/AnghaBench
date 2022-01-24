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
typedef  int u8 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ time64_t ;
struct rtc_time {int tm_year; int tm_isdst; int tm_yday; scalar_t__ tm_wday; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {struct rtc_time time; scalar_t__ enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 int MCP795_ALM0C0_BIT ; 
 int MCP795_ALM0C1_BIT ; 
 int MCP795_ALM0C2_BIT ; 
 int /*<<< orphan*/  MCP795_REG_ALM0_SECONDS ; 
 int SEC_PER_DAY ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct device*,struct rtc_time*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (struct device*,int) ; 
 scalar_t__ FUNC7 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_wkalrm *alm)
{
	struct rtc_time now_tm;
	time64_t now;
	time64_t later;
	u8 tmp[6];
	int ret;

	/* Read current time from RTC hardware */
	ret = FUNC3(dev, &now_tm);
	if (ret)
		return ret;
	/* Get the number of seconds since 1970 */
	now = FUNC7(&now_tm);
	later = FUNC7(&alm->time);
	if (later <= now)
		return -EINVAL;
	/* make sure alarm fires within the next one year */
	if ((later - now) >=
		(SEC_PER_DAY * (365 + FUNC2(alm->time.tm_year))))
		return -EDOM;
	/* disable alarm */
	ret = FUNC6(dev, false);
	if (ret)
		return ret;
	/* Read registers, so we can leave configuration bits untouched */
	ret = FUNC4(dev, MCP795_REG_ALM0_SECONDS, tmp, sizeof(tmp));
	if (ret)
		return ret;

	alm->time.tm_year	= -1;
	alm->time.tm_isdst	= -1;
	alm->time.tm_yday	= -1;

	tmp[0] = (tmp[0] & 0x80) | FUNC0(alm->time.tm_sec);
	tmp[1] = (tmp[1] & 0x80) | FUNC0(alm->time.tm_min);
	tmp[2] = (tmp[2] & 0xE0) | FUNC0(alm->time.tm_hour);
	tmp[3] = (tmp[3] & 0x80) | FUNC0(alm->time.tm_wday + 1);
	/* set alarm match: seconds, minutes, hour, day, date and month */
	tmp[3] |= (MCP795_ALM0C2_BIT | MCP795_ALM0C1_BIT | MCP795_ALM0C0_BIT);
	tmp[4] = (tmp[4] & 0xC0) | FUNC0(alm->time.tm_mday);
	tmp[5] = (tmp[5] & 0xE0) | FUNC0(alm->time.tm_mon + 1);

	ret = FUNC5(dev, MCP795_REG_ALM0_SECONDS, tmp, sizeof(tmp));
	if (ret)
		return ret;

	/* enable alarm if requested */
	if (alm->enabled) {
		ret = FUNC6(dev, true);
		if (ret)
			return ret;
		FUNC1(dev, "Alarm IRQ armed\n");
	}
	FUNC1(dev, "Set alarm: %ptRdr(%d) %ptRt\n",
		&alm->time, alm->time.tm_wday, &alm->time);
	return 0;
}