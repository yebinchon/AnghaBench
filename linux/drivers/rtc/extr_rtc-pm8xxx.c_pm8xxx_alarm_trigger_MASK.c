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
struct pm8xxx_rtc_regs {unsigned int alarm_en; int /*<<< orphan*/  alarm_ctrl2; int /*<<< orphan*/  alarm_ctrl; } ;
struct pm8xxx_rtc {int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  ctrl_reg_lock; int /*<<< orphan*/  rtc; struct pm8xxx_rtc_regs* regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int PM8xxx_RTC_ALARM_CLEAR ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct pm8xxx_rtc *rtc_dd = dev_id;
	const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;
	unsigned int ctrl_reg;
	int rc;
	unsigned long irq_flags;

	FUNC3(rtc_dd->rtc, 1, RTC_IRQF | RTC_AF);

	FUNC4(&rtc_dd->ctrl_reg_lock, irq_flags);

	/* Clear the alarm enable bit */
	rc = FUNC1(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
	if (rc) {
		FUNC5(&rtc_dd->ctrl_reg_lock, irq_flags);
		goto rtc_alarm_handled;
	}

	ctrl_reg &= ~regs->alarm_en;

	rc = FUNC2(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
	if (rc) {
		FUNC5(&rtc_dd->ctrl_reg_lock, irq_flags);
		FUNC0(rtc_dd->rtc_dev,
			"Write to alarm control register failed\n");
		goto rtc_alarm_handled;
	}

	FUNC5(&rtc_dd->ctrl_reg_lock, irq_flags);

	/* Clear RTC alarm register */
	rc = FUNC1(rtc_dd->regmap, regs->alarm_ctrl2, &ctrl_reg);
	if (rc) {
		FUNC0(rtc_dd->rtc_dev,
			"RTC Alarm control2 register read failed\n");
		goto rtc_alarm_handled;
	}

	ctrl_reg |= PM8xxx_RTC_ALARM_CLEAR;
	rc = FUNC2(rtc_dd->regmap, regs->alarm_ctrl2, ctrl_reg);
	if (rc)
		FUNC0(rtc_dd->rtc_dev,
			"Write to RTC Alarm control2 register failed\n");

rtc_alarm_handled:
	return IRQ_HANDLED;
}