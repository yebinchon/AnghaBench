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
typedef  int u8 ;
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct pcf85063 {TYPE_1__* rtc; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  regs ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCF85063_REG_SC ; 
 int PCF85063_REG_SC_OS ; 
 void* FUNC0 (int) ; 
 struct pcf85063* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct pcf85063 *pcf85063 = FUNC1(dev);
	int rc;
	u8 regs[7];

	/*
	 * while reading, the time/date registers are blocked and not updated
	 * anymore until the access is finished. To not lose a second
	 * event, the access must be finished within one second. So, read all
	 * time/date registers in one turn.
	 */
	rc = FUNC3(pcf85063->regmap, PCF85063_REG_SC, regs,
			      sizeof(regs));
	if (rc)
		return rc;

	/* if the clock has lost its power it makes no sense to use its time */
	if (regs[0] & PCF85063_REG_SC_OS) {
		FUNC2(&pcf85063->rtc->dev, "Power loss detected, invalid time\n");
		return -EINVAL;
	}

	tm->tm_sec = FUNC0(regs[0] & 0x7F);
	tm->tm_min = FUNC0(regs[1] & 0x7F);
	tm->tm_hour = FUNC0(regs[2] & 0x3F); /* rtc hr 0-23 */
	tm->tm_mday = FUNC0(regs[3] & 0x3F);
	tm->tm_wday = regs[4] & 0x07;
	tm->tm_mon = FUNC0(regs[5] & 0x1F) - 1; /* rtc mn 1-12 */
	tm->tm_year = FUNC0(regs[6]);
	tm->tm_year += 100;

	return 0;
}