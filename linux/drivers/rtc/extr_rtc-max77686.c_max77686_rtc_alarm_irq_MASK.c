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
struct max77686_rtc_info {int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct max77686_rtc_info *info = data;

	FUNC0(info->dev, "RTC alarm IRQ: %d\n", irq);

	FUNC1(info->rtc_dev, 1, RTC_IRQF | RTC_AF);

	return IRQ_HANDLED;
}