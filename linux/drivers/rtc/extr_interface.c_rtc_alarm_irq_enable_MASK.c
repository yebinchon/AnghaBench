#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {unsigned int enabled; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; TYPE_2__ dev; TYPE_1__* ops; TYPE_3__ aie_timer; } ;
struct TYPE_5__ {int (* alarm_irq_enable ) (int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rtc_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_device*,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int) ; 

int FUNC6(struct rtc_device *rtc, unsigned int enabled)
{
	int err;

	err = FUNC0(&rtc->ops_lock);
	if (err)
		return err;

	if (rtc->aie_timer.enabled != enabled) {
		if (enabled)
			err = FUNC2(rtc, &rtc->aie_timer);
		else
			FUNC3(rtc, &rtc->aie_timer);
	}

	if (err)
		/* nothing */;
	else if (!rtc->ops)
		err = -ENODEV;
	else if (!rtc->ops->alarm_irq_enable)
		err = -EINVAL;
	else
		err = rtc->ops->alarm_irq_enable(rtc->dev.parent, enabled);

	FUNC1(&rtc->ops_lock);

	FUNC5(enabled, err);
	return err;
}