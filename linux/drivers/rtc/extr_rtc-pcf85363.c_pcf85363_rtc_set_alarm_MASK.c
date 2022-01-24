#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; TYPE_1__ time; } ;
struct pcf85363 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ DT_MONTH_ALM1 ; 
 scalar_t__ DT_SECOND_ALM1 ; 
 int FUNC0 (struct pcf85363*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 struct pcf85363* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pcf85363 *pcf85363 = FUNC2(dev);
	unsigned char buf[DT_MONTH_ALM1 - DT_SECOND_ALM1 + 1];
	int ret;

	buf[0] = FUNC1(alrm->time.tm_sec);
	buf[1] = FUNC1(alrm->time.tm_min);
	buf[2] = FUNC1(alrm->time.tm_hour);
	buf[3] = FUNC1(alrm->time.tm_mday);
	buf[4] = FUNC1(alrm->time.tm_mon + 1);

	/*
	 * Disable the alarm interrupt before changing the value to avoid
	 * spurious interrupts
	 */
	ret = FUNC0(pcf85363, 0);
	if (ret)
		return ret;

	ret = FUNC3(pcf85363->regmap, DT_SECOND_ALM1, buf,
				sizeof(buf));
	if (ret)
		return ret;

	return FUNC0(pcf85363, alrm->enabled);
}