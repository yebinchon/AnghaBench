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
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long RTC_BIT_AI ; 
 scalar_t__ RTC_ICR ; 
 scalar_t__ RTC_IMSC ; 
 struct pl031_local* FUNC0 (struct device*) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
	unsigned int enabled)
{
	struct pl031_local *ldata = FUNC0(dev);
	unsigned long imsc;

	/* Clear any pending alarm interrupts. */
	FUNC2(RTC_BIT_AI, ldata->base + RTC_ICR);

	imsc = FUNC1(ldata->base + RTC_IMSC);

	if (enabled == 1)
		FUNC2(imsc | RTC_BIT_AI, ldata->base + RTC_IMSC);
	else
		FUNC2(imsc & ~RTC_BIT_AI, ldata->base + RTC_IMSC);

	return 0;
}