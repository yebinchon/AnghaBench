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
struct device {struct max8903_pdata* platform_data; } ;
struct platform_device {struct device dev; } ;
struct max8903_pdata {int dok; int dcm; int uok; int cen; int chg; int flt; int usus; scalar_t__ usb_valid; scalar_t__ dc_valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct max8903_data {int fault; int ta_in; int usb_in; TYPE_1__ psy_desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct max8903_data* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct max8903_data *data = FUNC5(pdev);
	struct device *dev = &pdev->dev;
	struct max8903_pdata *pdata = pdev->dev.platform_data;
	int ret = 0;
	int gpio;
	int ta_in = 0;
	int usb_in = 0;

	if (pdata->dc_valid) {
		if (FUNC3(pdata->dok)) {
			ret = FUNC1(dev, pdata->dok,
						data->psy_desc.name);
			if (ret) {
				FUNC0(dev,
					"Failed GPIO request for dok: %d err %d\n",
					pdata->dok, ret);
				return ret;
			}

			gpio = pdata->dok; /* PULL_UPed Interrupt */
			ta_in = FUNC2(gpio) ? 0 : 1;
		} else {
			FUNC0(dev, "When DC is wired, DOK should be wired as well.\n");
			return -EINVAL;
		}
	}

	if (FUNC3(pdata->dcm)) {
		ret = FUNC1(dev, pdata->dcm, data->psy_desc.name);
		if (ret) {
			FUNC0(dev,
				"Failed GPIO request for dcm: %d err %d\n",
				pdata->dcm, ret);
			return ret;
		}

		gpio = pdata->dcm; /* Output */
		FUNC4(gpio, ta_in);
	}

	if (pdata->usb_valid) {
		if (FUNC3(pdata->uok)) {
			ret = FUNC1(dev, pdata->uok,
						data->psy_desc.name);
			if (ret) {
				FUNC0(dev,
					"Failed GPIO request for uok: %d err %d\n",
					pdata->uok, ret);
				return ret;
			}

			gpio = pdata->uok;
			usb_in = FUNC2(gpio) ? 0 : 1;
		} else {
			FUNC0(dev, "When USB is wired, UOK should be wired."
					"as well.\n");
			return -EINVAL;
		}
	}

	if (FUNC3(pdata->cen)) {
		ret = FUNC1(dev, pdata->cen, data->psy_desc.name);
		if (ret) {
			FUNC0(dev,
				"Failed GPIO request for cen: %d err %d\n",
				pdata->cen, ret);
			return ret;
		}

		FUNC4(pdata->cen, (ta_in || usb_in) ? 0 : 1);
	}

	if (FUNC3(pdata->chg)) {
		ret = FUNC1(dev, pdata->chg, data->psy_desc.name);
		if (ret) {
			FUNC0(dev,
				"Failed GPIO request for chg: %d err %d\n",
				pdata->chg, ret);
			return ret;
		}
	}

	if (FUNC3(pdata->flt)) {
		ret = FUNC1(dev, pdata->flt, data->psy_desc.name);
		if (ret) {
			FUNC0(dev,
				"Failed GPIO request for flt: %d err %d\n",
				pdata->flt, ret);
			return ret;
		}
	}

	if (FUNC3(pdata->usus)) {
		ret = FUNC1(dev, pdata->usus, data->psy_desc.name);
		if (ret) {
			FUNC0(dev,
				"Failed GPIO request for usus: %d err %d\n",
				pdata->usus, ret);
			return ret;
		}
	}

	data->fault = false;
	data->ta_in = ta_in;
	data->usb_in = usb_in;

	return 0;
}