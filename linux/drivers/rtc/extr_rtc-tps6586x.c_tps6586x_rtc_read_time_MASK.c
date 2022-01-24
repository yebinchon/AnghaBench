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
typedef  unsigned long long u8 ;
typedef  unsigned long long time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_COUNT4_DUMMYREAD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,struct rtc_time*) ; 
 struct device* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int,unsigned long long*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct device *tps_dev = FUNC2(dev);
	unsigned long long ticks = 0;
	time64_t seconds;
	u8 buff[6];
	int ret;
	int i;

	ret = FUNC3(tps_dev, RTC_COUNT4_DUMMYREAD, sizeof(buff), buff);
	if (ret < 0) {
		FUNC0(dev, "read counter failed with err %d\n", ret);
		return ret;
	}

	for (i = 1; i < sizeof(buff); i++) {
		ticks <<= 8;
		ticks |= buff[i];
	}

	seconds = ticks >> 10;
	FUNC1(seconds, tm);

	return 0;
}