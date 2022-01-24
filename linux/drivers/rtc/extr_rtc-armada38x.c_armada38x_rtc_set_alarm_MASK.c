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
typedef  int /*<<< orphan*/  u32 ;
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct armada38x_rtc {int /*<<< orphan*/  lock; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask_interrupt ) (struct armada38x_rtc*) ;int /*<<< orphan*/  alarm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_ALARM1 ; 
 int /*<<< orphan*/  RTC_IRQ1_CONF ; 
 unsigned long RTC_IRQ_AL_EN ; 
 struct armada38x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct armada38x_rtc*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct armada38x_rtc*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct armada38x_rtc *rtc = FUNC1(dev);
	u32 reg = FUNC0(RTC_ALARM1, rtc->data->alarm);
	u32 reg_irq = FUNC0(RTC_IRQ1_CONF, rtc->data->alarm);
	unsigned long time, flags;

	time = FUNC3(&alrm->time);

	FUNC4(&rtc->lock, flags);

	FUNC2(time, rtc, reg);

	if (alrm->enabled) {
		FUNC2(RTC_IRQ_AL_EN, rtc, reg_irq);
		rtc->data->unmask_interrupt(rtc);
	}

	FUNC5(&rtc->lock, flags);

	return 0;
}