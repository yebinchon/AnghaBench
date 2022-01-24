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
struct device {int dummy; } ;
struct armada38x_rtc {int /*<<< orphan*/  lock; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  alarm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_IRQ1_CONF ; 
 int /*<<< orphan*/  RTC_IRQ_AL_EN ; 
 struct armada38x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct armada38x_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
					 unsigned int enabled)
{
	struct armada38x_rtc *rtc = FUNC1(dev);
	u32 reg_irq = FUNC0(RTC_IRQ1_CONF, rtc->data->alarm);
	unsigned long flags;

	FUNC3(&rtc->lock, flags);

	if (enabled)
		FUNC2(RTC_IRQ_AL_EN, rtc, reg_irq);
	else
		FUNC2(0, rtc, reg_irq);

	FUNC4(&rtc->lock, flags);

	return 0;
}