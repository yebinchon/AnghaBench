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
typedef  int /*<<< orphan*/  value ;
typedef  unsigned int u8 ;
struct rtc_time {int dummy; } ;
struct pm8xxx_rtc_regs {int /*<<< orphan*/  read; } ;
struct pm8xxx_rtc {int /*<<< orphan*/  regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NUM_8_BIT_RTC_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long,struct rtc_time*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct pm8xxx_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,struct rtc_time*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	int rc;
	u8 value[NUM_8_BIT_RTC_REGS];
	unsigned long secs;
	unsigned int reg;
	struct pm8xxx_rtc *rtc_dd = FUNC2(dev);
	const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

	rc = FUNC3(rtc_dd->regmap, regs->read, value, sizeof(value));
	if (rc) {
		FUNC1(dev, "RTC read data register failed\n");
		return rc;
	}

	/*
	 * Read the LSB again and check if there has been a carry over.
	 * If there is, redo the read operation.
	 */
	rc = FUNC4(rtc_dd->regmap, regs->read, &reg);
	if (rc < 0) {
		FUNC1(dev, "RTC read data register failed\n");
		return rc;
	}

	if (FUNC6(reg < value[0])) {
		rc = FUNC3(rtc_dd->regmap, regs->read,
				      value, sizeof(value));
		if (rc) {
			FUNC1(dev, "RTC read data register failed\n");
			return rc;
		}
	}

	secs = value[0] | (value[1] << 8) | (value[2] << 16) |
	       ((unsigned long)value[3] << 24);

	FUNC5(secs, tm);

	FUNC0(dev, "secs = %lu, h:m:s == %ptRt, y-m-d = %ptRdr\n", secs, tm, tm);

	return 0;
}