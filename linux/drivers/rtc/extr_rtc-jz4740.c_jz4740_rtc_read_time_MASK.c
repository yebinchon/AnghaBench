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
typedef  int uint32_t ;
struct rtc_time {int dummy; } ;
struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  JZ_REG_RTC_SCRATCHPAD ; 
 int /*<<< orphan*/  JZ_REG_RTC_SEC ; 
 struct jz4740_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct jz4740_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *time)
{
	struct jz4740_rtc *rtc = FUNC0(dev);
	uint32_t secs, secs2;
	int timeout = 5;

	if (FUNC1(rtc, JZ_REG_RTC_SCRATCHPAD) != 0x12345678)
		return -EINVAL;

	/* If the seconds register is read while it is updated, it can contain a
	 * bogus value. This can be avoided by making sure that two consecutive
	 * reads have the same value.
	 */
	secs = FUNC1(rtc, JZ_REG_RTC_SEC);
	secs2 = FUNC1(rtc, JZ_REG_RTC_SEC);

	while (secs != secs2 && --timeout) {
		secs = secs2;
		secs2 = FUNC1(rtc, JZ_REG_RTC_SEC);
	}

	if (timeout == 0)
		return -EIO;

	FUNC2(secs, time);

	return 0;
}