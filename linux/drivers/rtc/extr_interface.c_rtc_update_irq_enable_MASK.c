#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
struct TYPE_5__ {unsigned int enabled; void* period; TYPE_1__ node; } ;
struct rtc_device {int /*<<< orphan*/  ops_lock; TYPE_2__ uie_rtctimer; scalar_t__ uie_unsupported; scalar_t__ uie_irq_active; } ;
typedef  void* ktime_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct rtc_device*,unsigned int) ; 
 int FUNC6 (struct rtc_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_device*,TYPE_2__*) ; 
 void* FUNC8 (struct rtc_time) ; 

int FUNC9(struct rtc_device *rtc, unsigned int enabled)
{
	int err;

	err = FUNC3(&rtc->ops_lock);
	if (err)
		return err;

#ifdef CONFIG_RTC_INTF_DEV_UIE_EMUL
	if (enabled == 0 && rtc->uie_irq_active) {
		mutex_unlock(&rtc->ops_lock);
		return rtc_dev_update_irq_enable_emul(rtc, 0);
	}
#endif
	/* make sure we're changing state */
	if (rtc->uie_rtctimer.enabled == enabled)
		goto out;

	if (rtc->uie_unsupported) {
		err = -EINVAL;
		goto out;
	}

	if (enabled) {
		struct rtc_time tm;
		ktime_t now, onesec;

		FUNC0(rtc, &tm);
		onesec = FUNC2(1, 0);
		now = FUNC8(tm);
		rtc->uie_rtctimer.node.expires = FUNC1(now, onesec);
		rtc->uie_rtctimer.period = FUNC2(1, 0);
		err = FUNC6(rtc, &rtc->uie_rtctimer);
	} else {
		FUNC7(rtc, &rtc->uie_rtctimer);
	}

out:
	FUNC4(&rtc->ops_lock);
#ifdef CONFIG_RTC_INTF_DEV_UIE_EMUL
	/*
	 * Enable emulation if the driver returned -EINVAL to signal that it has
	 * been configured without interrupts or they are not available at the
	 * moment.
	 */
	if (err == -EINVAL)
		err = rtc_dev_update_irq_enable_emul(rtc, enabled);
#endif
	return err;
}