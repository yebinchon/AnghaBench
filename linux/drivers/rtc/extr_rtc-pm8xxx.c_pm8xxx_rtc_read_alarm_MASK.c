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
typedef  int u8 ;
struct rtc_wkalrm {int /*<<< orphan*/  time; } ;
struct pm8xxx_rtc_regs {int /*<<< orphan*/  alarm_rw; } ;
struct pm8xxx_rtc {int /*<<< orphan*/  regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NUM_8_BIT_RTC_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct pm8xxx_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alarm)
{
	int rc;
	u8 value[NUM_8_BIT_RTC_REGS];
	unsigned long secs;
	struct pm8xxx_rtc *rtc_dd = FUNC2(dev);
	const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

	rc = FUNC3(rtc_dd->regmap, regs->alarm_rw, value,
			      sizeof(value));
	if (rc) {
		FUNC1(dev, "RTC alarm time read failed\n");
		return rc;
	}

	secs = value[0] | (value[1] << 8) | (value[2] << 16) |
	       ((unsigned long)value[3] << 24);

	FUNC4(secs, &alarm->time);

	rc = FUNC5(&alarm->time);
	if (rc < 0) {
		FUNC1(dev, "Invalid alarm time read from RTC\n");
		return rc;
	}

	FUNC0(dev, "Alarm set for - h:m:s=%ptRt, y-m-d=%ptRdr\n",
		&alarm->time, &alarm->time);

	return 0;
}