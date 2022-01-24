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
struct rtc_plat_data {scalar_t__ irq; int /*<<< orphan*/  irqen; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC_AF ; 
 struct rtc_plat_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_plat_data*) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
	unsigned int enabled)
{
	struct rtc_plat_data *pdata = FUNC0(dev);

	if (pdata->irq <= 0)
		return -EINVAL;
	if (enabled)
		pdata->irqen |= RTC_AF;
	else
		pdata->irqen &= ~RTC_AF;
	FUNC1(pdata);
	return 0;
}