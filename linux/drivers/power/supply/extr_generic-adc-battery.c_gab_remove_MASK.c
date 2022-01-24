#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct gab_platform_data {int /*<<< orphan*/  gpio_charge_finished; } ;
struct TYPE_2__ {int /*<<< orphan*/  properties; } ;
struct gab {int /*<<< orphan*/  bat_work; TYPE_1__ psy_desc; scalar_t__* channel; int /*<<< orphan*/  psy; struct gab_platform_data* pdata; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gab*) ; 
 int /*<<< orphan*/  gab_chan_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct gab* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	int chan;
	struct gab *adc_bat = FUNC8(pdev);
	struct gab_platform_data *pdata = adc_bat->pdata;

	FUNC9(adc_bat->psy);

	if (FUNC4(pdata->gpio_charge_finished)) {
		FUNC2(FUNC5(pdata->gpio_charge_finished), adc_bat);
		FUNC3(pdata->gpio_charge_finished);
	}

	for (chan = 0; chan < FUNC0(gab_chan_name); chan++) {
		if (adc_bat->channel[chan])
			FUNC6(adc_bat->channel[chan]);
	}

	FUNC7(adc_bat->psy_desc.properties);
	FUNC1(&adc_bat->bat_work);
	return 0;
}