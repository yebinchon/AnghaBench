#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rv8803_data {int ctrl; int /*<<< orphan*/  flags_lock; TYPE_3__* rtc; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ enabled; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_2__ aie_timer; TYPE_1__ uie_rtctimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV8803_CTRL ; 
 int RV8803_CTRL_AIE ; 
 int RV8803_CTRL_UIE ; 
 int /*<<< orphan*/  RV8803_FLAG ; 
 int RV8803_FLAG_AF ; 
 int RV8803_FLAG_UF ; 
 struct rv8803_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int enabled)
{
	struct i2c_client *client = FUNC5(dev);
	struct rv8803_data *rv8803 = FUNC0(dev);
	int ctrl, flags, err;

	ctrl = rv8803->ctrl;

	if (enabled) {
		if (rv8803->rtc->uie_rtctimer.enabled)
			ctrl |= RV8803_CTRL_UIE;
		if (rv8803->rtc->aie_timer.enabled)
			ctrl |= RV8803_CTRL_AIE;
	} else {
		if (!rv8803->rtc->uie_rtctimer.enabled)
			ctrl &= ~RV8803_CTRL_UIE;
		if (!rv8803->rtc->aie_timer.enabled)
			ctrl &= ~RV8803_CTRL_AIE;
	}

	FUNC1(&rv8803->flags_lock);
	flags = FUNC3(client, RV8803_FLAG);
	if (flags < 0) {
		FUNC2(&rv8803->flags_lock);
		return flags;
	}
	flags &= ~(RV8803_FLAG_AF | RV8803_FLAG_UF);
	err = FUNC4(client, RV8803_FLAG, flags);
	FUNC2(&rv8803->flags_lock);
	if (err)
		return err;

	if (ctrl != rv8803->ctrl) {
		rv8803->ctrl = ctrl;
		err = FUNC4(client, RV8803_CTRL, rv8803->ctrl);
		if (err)
			return err;
	}

	return 0;
}