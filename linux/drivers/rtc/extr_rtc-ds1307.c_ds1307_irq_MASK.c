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
struct ds1307 {TYPE_1__* rtc; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct mutex ops_lock; } ;

/* Variables and functions */
 int DS1337_BIT_A1I ; 
 int /*<<< orphan*/  DS1337_BIT_A1IE ; 
 int /*<<< orphan*/  DS1337_REG_CONTROL ; 
 int /*<<< orphan*/  DS1337_REG_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct ds1307		*ds1307 = dev_id;
	struct mutex		*lock = &ds1307->rtc->ops_lock;
	int			stat, ret;

	FUNC0(lock);
	ret = FUNC2(ds1307->regmap, DS1337_REG_STATUS, &stat);
	if (ret)
		goto out;

	if (stat & DS1337_BIT_A1I) {
		stat &= ~DS1337_BIT_A1I;
		FUNC4(ds1307->regmap, DS1337_REG_STATUS, stat);

		ret = FUNC3(ds1307->regmap, DS1337_REG_CONTROL,
					 DS1337_BIT_A1IE, 0);
		if (ret)
			goto out;

		FUNC5(ds1307->rtc, 1, RTC_AF | RTC_IRQF);
	}

out:
	FUNC1(lock);

	return IRQ_HANDLED;
}