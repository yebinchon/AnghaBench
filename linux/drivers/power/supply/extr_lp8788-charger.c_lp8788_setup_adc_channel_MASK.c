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
struct lp8788_charger_platform_data {int /*<<< orphan*/  adc_batt_temp; int /*<<< orphan*/  adc_vbatt; } ;
struct lp8788_charger {struct iio_channel** chan; struct lp8788_charger_platform_data* pdata; } ;
struct iio_channel {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iio_channel*) ; 
 size_t LP8788_BATT_TEMP ; 
 size_t LP8788_VBATT ; 
 struct iio_channel* FUNC1 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev,
				struct lp8788_charger *pchg)
{
	struct lp8788_charger_platform_data *pdata = pchg->pdata;
	struct iio_channel *chan;

	if (!pdata)
		return;

	/* ADC channel for battery voltage */
	chan = FUNC1(dev, pdata->adc_vbatt);
	pchg->chan[LP8788_VBATT] = FUNC0(chan) ? NULL : chan;

	/* ADC channel for battery temperature */
	chan = FUNC1(dev, pdata->adc_batt_temp);
	pchg->chan[LP8788_BATT_TEMP] = FUNC0(chan) ? NULL : chan;
}