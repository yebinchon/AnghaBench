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
typedef  int u32 ;
struct snvs_rtc_data {scalar_t__ clk; scalar_t__ offset; int /*<<< orphan*/  regmap; int /*<<< orphan*/  rtc; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 scalar_t__ SNVS_LPSR ; 
 int SNVS_LPSR_LPTA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct snvs_rtc_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct device *dev = dev_id;
	struct snvs_rtc_data *data = FUNC2(dev);
	u32 lpsr;
	u32 events = 0;

	if (data->clk)
		FUNC1(data->clk);

	FUNC3(data->regmap, data->offset + SNVS_LPSR, &lpsr);

	if (lpsr & SNVS_LPSR_LPTA) {
		events |= (RTC_AF | RTC_IRQF);

		/* RTC alarm should be one-shot */
		FUNC6(dev, 0);

		FUNC5(data->rtc, 1, events);
	}

	/* clear interrupt status */
	FUNC4(data->regmap, data->offset + SNVS_LPSR, lpsr);

	if (data->clk)
		FUNC0(data->clk);

	return events ? IRQ_HANDLED : IRQ_NONE;
}