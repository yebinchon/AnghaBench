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
typedef  int u32 ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct armada38x_rtc {int /*<<< orphan*/  lock; TYPE_1__* data; } ;
struct TYPE_2__ {unsigned long (* read_rtc_reg ) (struct armada38x_rtc*,int) ;int /*<<< orphan*/  alarm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_ALARM1 ; 
 int /*<<< orphan*/  RTC_IRQ1_CONF ; 
 int RTC_IRQ_AL_EN ; 
 struct armada38x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (struct armada38x_rtc*,int) ; 
 int FUNC6 (struct armada38x_rtc*,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct armada38x_rtc *rtc = FUNC1(dev);
	unsigned long time, flags;
	u32 reg = FUNC0(RTC_ALARM1, rtc->data->alarm);
	u32 reg_irq = FUNC0(RTC_IRQ1_CONF, rtc->data->alarm);
	u32 val;

	FUNC3(&rtc->lock, flags);

	time = rtc->data->read_rtc_reg(rtc, reg);
	val = rtc->data->read_rtc_reg(rtc, reg_irq) & RTC_IRQ_AL_EN;

	FUNC4(&rtc->lock, flags);

	alrm->enabled = val ? 1 : 0;
	FUNC2(time,  &alrm->time);

	return 0;
}