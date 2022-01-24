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
struct pm8xxx_rtc_regs {unsigned int alarm_en; int /*<<< orphan*/  alarm_ctrl; } ;
struct pm8xxx_rtc {int /*<<< orphan*/  ctrl_reg_lock; int /*<<< orphan*/  regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct pm8xxx_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int enable)
{
	int rc;
	unsigned long irq_flags;
	struct pm8xxx_rtc *rtc_dd = FUNC1(dev);
	const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;
	unsigned int ctrl_reg;

	FUNC4(&rtc_dd->ctrl_reg_lock, irq_flags);

	rc = FUNC2(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
	if (rc)
		goto rtc_rw_fail;

	if (enable)
		ctrl_reg |= regs->alarm_en;
	else
		ctrl_reg &= ~regs->alarm_en;

	rc = FUNC3(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
	if (rc) {
		FUNC0(dev, "Write to RTC control register failed\n");
		goto rtc_rw_fail;
	}

rtc_rw_fail:
	FUNC5(&rtc_dd->ctrl_reg_lock, irq_flags);
	return rc;
}