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
struct mutex {int dummy; } ;
struct ds1307 {TYPE_1__* rtc; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_2__ {struct mutex ops_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int RX8130_REG_CONTROL0_AIE ; 
 int /*<<< orphan*/  RX8130_REG_EXTENSION ; 
 int RX8130_REG_FLAG_AF ; 
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct ds1307           *ds1307 = dev_id;
	struct mutex            *lock = &ds1307->rtc->ops_lock;
	u8 ctl[3];
	int ret;

	FUNC0(lock);

	/* Read control registers. */
	ret = FUNC2(ds1307->regmap, RX8130_REG_EXTENSION, ctl,
			       sizeof(ctl));
	if (ret < 0)
		goto out;
	if (!(ctl[1] & RX8130_REG_FLAG_AF))
		goto out;
	ctl[1] &= ~RX8130_REG_FLAG_AF;
	ctl[2] &= ~RX8130_REG_CONTROL0_AIE;

	ret = FUNC3(ds1307->regmap, RX8130_REG_EXTENSION, ctl,
				sizeof(ctl));
	if (ret < 0)
		goto out;

	FUNC4(ds1307->rtc, 1, RTC_AF | RTC_IRQF);

out:
	FUNC1(lock);

	return IRQ_HANDLED;
}