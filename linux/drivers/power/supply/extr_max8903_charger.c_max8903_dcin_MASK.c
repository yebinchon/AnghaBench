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
struct max8903_pdata {int /*<<< orphan*/  cen; int /*<<< orphan*/  dcm; int /*<<< orphan*/  dok; } ;
struct TYPE_2__ {int type; } ;
struct max8903_data {int ta_in; int /*<<< orphan*/  psy; TYPE_1__ psy_desc; scalar_t__ usb_in; int /*<<< orphan*/  dev; struct max8903_pdata* pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum power_supply_type { ____Placeholder_power_supply_type } power_supply_type ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int POWER_SUPPLY_TYPE_BATTERY ; 
 int POWER_SUPPLY_TYPE_MAINS ; 
 int POWER_SUPPLY_TYPE_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_data)
{
	struct max8903_data *data = _data;
	struct max8903_pdata *pdata = data->pdata;
	bool ta_in;
	enum power_supply_type old_type;

	ta_in = FUNC1(pdata->dok) ? false : true;

	if (ta_in == data->ta_in)
		return IRQ_HANDLED;

	data->ta_in = ta_in;

	/* Set Current-Limit-Mode 1:DC 0:USB */
	if (FUNC2(pdata->dcm))
		FUNC3(pdata->dcm, ta_in ? 1 : 0);

	/* Charger Enable / Disable (cen is negated) */
	if (FUNC2(pdata->cen))
		FUNC3(pdata->cen, ta_in ? 0 :
				(data->usb_in ? 0 : 1));

	FUNC0(data->dev, "TA(DC-IN) Charger %s.\n", ta_in ?
			"Connected" : "Disconnected");

	old_type = data->psy_desc.type;

	if (data->ta_in)
		data->psy_desc.type = POWER_SUPPLY_TYPE_MAINS;
	else if (data->usb_in)
		data->psy_desc.type = POWER_SUPPLY_TYPE_USB;
	else
		data->psy_desc.type = POWER_SUPPLY_TYPE_BATTERY;

	if (old_type != data->psy_desc.type)
		FUNC4(data->psy);

	return IRQ_HANDLED;
}