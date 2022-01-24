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
struct rtc_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_IRQF ; 
 int RTC_PF ; 
 int /*<<< orphan*/  RTC_RTSR ; 
 int RTC_RTSR_HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *id)
{
	struct rtc_device *rdev = id;

	FUNC2(FUNC0(RTC_RTSR) | RTC_RTSR_HZ, RTC_RTSR);
	FUNC1(rdev, 1, RTC_PF | RTC_IRQF);
	return IRQ_HANDLED;
}