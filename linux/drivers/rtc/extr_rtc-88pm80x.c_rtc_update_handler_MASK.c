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
struct pm80x_rtc_info {int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PM800_ALARM ; 
 int PM800_ALARM1_EN ; 
 int PM800_ALARM_WAKEUP ; 
 int /*<<< orphan*/  PM800_RTC_CONTROL ; 
 int /*<<< orphan*/  RTC_AF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct pm80x_rtc_info *info = (struct pm80x_rtc_info *)data;
	int mask;

	mask = PM800_ALARM | PM800_ALARM_WAKEUP;
	FUNC0(info->map, PM800_RTC_CONTROL, mask | PM800_ALARM1_EN,
			   mask);
	FUNC1(info->rtc_dev, 1, RTC_AF);
	return IRQ_HANDLED;
}