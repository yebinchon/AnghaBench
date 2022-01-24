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
struct pic32_rtc_dev {int /*<<< orphan*/  clk; int /*<<< orphan*/  rtc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pic32_rtc_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *id)
{
	struct pic32_rtc_dev *pdata = (struct pic32_rtc_dev *)id;

	FUNC1(pdata->clk);
	FUNC3(pdata->rtc, 1, RTC_AF | RTC_IRQF);
	FUNC0(pdata->clk);

	FUNC2(pdata, false);

	return IRQ_HANDLED;
}