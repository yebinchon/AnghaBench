#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtc_device {int irq_data; int /*<<< orphan*/  async_queue; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rtc_device *rtc, int num, int mode)
{
	unsigned long flags;

	/* mark one irq of the appropriate mode */
	FUNC1(&rtc->irq_lock, flags);
	rtc->irq_data = (rtc->irq_data + (num << 8)) | (RTC_IRQF | mode);
	FUNC2(&rtc->irq_lock, flags);

	FUNC3(&rtc->irq_queue);
	FUNC0(&rtc->async_queue, SIGIO, POLL_IN);
}