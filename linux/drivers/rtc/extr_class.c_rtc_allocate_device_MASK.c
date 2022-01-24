#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  groups; int /*<<< orphan*/  class; } ;
struct rtc_device {int set_offset_nsec; int irq_freq; int max_user_freq; scalar_t__ pie_enabled; TYPE_1__ pie_timer; int /*<<< orphan*/  uie_rtctimer; int /*<<< orphan*/  aie_timer; int /*<<< orphan*/  irqwork; int /*<<< orphan*/  timerqueue; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  ops_lock; TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rtc_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_aie_update_irq ; 
 int /*<<< orphan*/  rtc_class ; 
 int /*<<< orphan*/  rtc_device_release ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  rtc_pie_update_irq ; 
 int /*<<< orphan*/  rtc_timer_do_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rtc_device*) ; 
 int /*<<< orphan*/  rtc_uie_update_irq ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rtc_device *FUNC10(void)
{
	struct rtc_device *rtc;

	rtc = FUNC4(sizeof(*rtc), GFP_KERNEL);
	if (!rtc)
		return NULL;

	FUNC1(&rtc->dev);

	/* Drivers can revise this default after allocating the device. */
	rtc->set_offset_nsec =  NSEC_PER_SEC / 2;

	rtc->irq_freq = 1;
	rtc->max_user_freq = 64;
	rtc->dev.class = rtc_class;
	rtc->dev.groups = FUNC6();
	rtc->dev.release = rtc_device_release;

	FUNC5(&rtc->ops_lock);
	FUNC8(&rtc->irq_lock);
	FUNC3(&rtc->irq_queue);

	/* Init timerqueue */
	FUNC9(&rtc->timerqueue);
	FUNC0(&rtc->irqwork, rtc_timer_do_work);
	/* Init aie timer */
	FUNC7(&rtc->aie_timer, rtc_aie_update_irq, rtc);
	/* Init uie timer */
	FUNC7(&rtc->uie_rtctimer, rtc_uie_update_irq, rtc);
	/* Init pie timer */
	FUNC2(&rtc->pie_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	rtc->pie_timer.function = rtc_pie_update_irq;
	rtc->pie_enabled = 0;

	return rtc;
}