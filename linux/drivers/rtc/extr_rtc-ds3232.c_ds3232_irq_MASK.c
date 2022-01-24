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
struct mutex {int dummy; } ;
struct ds3232 {TYPE_1__* rtc; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3232_REG_CR ; 
 int DS3232_REG_CR_A1IE ; 
 int /*<<< orphan*/  DS3232_REG_SR ; 
 int DS3232_REG_SR_A1F ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 struct ds3232* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct device *dev = dev_id;
	struct ds3232 *ds3232 = FUNC0(dev);
	struct mutex *lock = &ds3232->rtc->ops_lock;
	int ret;
	int stat, control;

	FUNC2(lock);

	ret = FUNC4(ds3232->regmap, DS3232_REG_SR, &stat);
	if (ret)
		goto unlock;

	if (stat & DS3232_REG_SR_A1F) {
		ret = FUNC4(ds3232->regmap, DS3232_REG_CR, &control);
		if (ret) {
			FUNC1(ds3232->dev,
				 "Read Control Register error %d\n", ret);
		} else {
			/* disable alarm1 interrupt */
			control &= ~(DS3232_REG_CR_A1IE);
			ret = FUNC5(ds3232->regmap, DS3232_REG_CR,
					   control);
			if (ret) {
				FUNC1(ds3232->dev,
					 "Write Control Register error %d\n",
					 ret);
				goto unlock;
			}

			/* clear the alarm pend flag */
			stat &= ~DS3232_REG_SR_A1F;
			ret = FUNC5(ds3232->regmap, DS3232_REG_SR, stat);
			if (ret) {
				FUNC1(ds3232->dev,
					 "Write Status Register error %d\n",
					 ret);
				goto unlock;
			}

			FUNC6(ds3232->rtc, 1, RTC_AF | RTC_IRQF);
		}
	}

unlock:
	FUNC3(lock);

	return IRQ_HANDLED;
}