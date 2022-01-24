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
typedef  unsigned long u8 ;
struct rtc_wkalrm {int /*<<< orphan*/  time; scalar_t__ enabled; } ;
struct pm8xxx_rtc_regs {unsigned int alarm_en; int /*<<< orphan*/  alarm_ctrl; int /*<<< orphan*/  alarm_rw; } ;
struct pm8xxx_rtc {int /*<<< orphan*/  ctrl_reg_lock; int /*<<< orphan*/  regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NUM_8_BIT_RTC_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct pm8xxx_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *alarm)
{
	int rc, i;
	u8 value[NUM_8_BIT_RTC_REGS];
	unsigned int ctrl_reg;
	unsigned long secs, irq_flags;
	struct pm8xxx_rtc *rtc_dd = FUNC2(dev);
	const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

	FUNC6(&alarm->time, &secs);

	for (i = 0; i < NUM_8_BIT_RTC_REGS; i++) {
		value[i] = secs & 0xFF;
		secs >>= 8;
	}

	FUNC7(&rtc_dd->ctrl_reg_lock, irq_flags);

	rc = FUNC3(rtc_dd->regmap, regs->alarm_rw, value,
			       sizeof(value));
	if (rc) {
		FUNC1(dev, "Write to RTC ALARM register failed\n");
		goto rtc_rw_fail;
	}

	rc = FUNC4(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
	if (rc)
		goto rtc_rw_fail;

	if (alarm->enabled)
		ctrl_reg |= regs->alarm_en;
	else
		ctrl_reg &= ~regs->alarm_en;

	rc = FUNC5(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
	if (rc) {
		FUNC1(dev, "Write to RTC alarm control register failed\n");
		goto rtc_rw_fail;
	}

	FUNC0(dev, "Alarm Set for h:m:s=%ptRt, y-m-d=%ptRdr\n",
		&alarm->time, &alarm->time);
rtc_rw_fail:
	FUNC8(&rtc_dd->ctrl_reg_lock, irq_flags);
	return rc;
}