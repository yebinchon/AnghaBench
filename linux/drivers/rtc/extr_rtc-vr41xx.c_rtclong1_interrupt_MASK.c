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
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RTCINTREG ; 
 int /*<<< orphan*/  RTCL1HREG ; 
 int /*<<< orphan*/  RTCL1LREG ; 
 int /*<<< orphan*/  RTCLONG1_INT ; 
 int /*<<< orphan*/  RTC_PF ; 
 unsigned long periodic_count ; 
 struct rtc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct platform_device *pdev = (struct platform_device *)dev_id;
	struct rtc_device *rtc = FUNC0(pdev);
	unsigned long count = periodic_count;

	FUNC2(RTCINTREG, RTCLONG1_INT);

	FUNC1(RTCL1LREG, count);
	FUNC1(RTCL1HREG, count >> 16);

	FUNC3(rtc, 1, RTC_PF);

	return IRQ_HANDLED;
}