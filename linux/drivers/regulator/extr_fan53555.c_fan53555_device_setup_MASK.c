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
struct fan53555_platform_data {int sleep_vsel_id; } ;
struct fan53555_device_info {int vendor; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode_mask; void* vol_reg; void* mode_reg; void* sleep_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_MODE_VSEL0_MODE ; 
 int /*<<< orphan*/  CTL_MODE_VSEL1_MODE ; 
 int EINVAL ; 
#define  FAN53526_VENDOR_FAIRCHILD 132 
 void* FAN53555_CONTROL ; 
#define  FAN53555_VENDOR_FAIRCHILD 131 
#define  FAN53555_VENDOR_SILERGY 130 
 void* FAN53555_VSEL0 ; 
 void* FAN53555_VSEL1 ; 
#define  FAN53555_VSEL_ID_0 129 
#define  FAN53555_VSEL_ID_1 128 
 int /*<<< orphan*/  VSEL_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct fan53555_device_info*) ; 
 int FUNC2 (struct fan53555_device_info*) ; 
 int FUNC3 (struct fan53555_device_info*) ; 

__attribute__((used)) static int FUNC4(struct fan53555_device_info *di,
				struct fan53555_platform_data *pdata)
{
	int ret = 0;

	/* Setup voltage control register */
	switch (pdata->sleep_vsel_id) {
	case FAN53555_VSEL_ID_0:
		di->sleep_reg = FAN53555_VSEL0;
		di->vol_reg = FAN53555_VSEL1;
		break;
	case FAN53555_VSEL_ID_1:
		di->sleep_reg = FAN53555_VSEL1;
		di->vol_reg = FAN53555_VSEL0;
		break;
	default:
		FUNC0(di->dev, "Invalid VSEL ID!\n");
		return -EINVAL;
	}

	/* Setup mode control register */
	switch (di->vendor) {
	case FAN53526_VENDOR_FAIRCHILD:
		di->mode_reg = FAN53555_CONTROL;

		switch (pdata->sleep_vsel_id) {
		case FAN53555_VSEL_ID_0:
			di->mode_mask = CTL_MODE_VSEL1_MODE;
			break;
		case FAN53555_VSEL_ID_1:
			di->mode_mask = CTL_MODE_VSEL0_MODE;
			break;
		}
		break;
	case FAN53555_VENDOR_FAIRCHILD:
	case FAN53555_VENDOR_SILERGY:
		di->mode_reg = di->vol_reg;
		di->mode_mask = VSEL_MODE;
		break;
	default:
		FUNC0(di->dev, "vendor %d not supported!\n", di->vendor);
		return -EINVAL;
	}

	/* Setup voltage range */
	switch (di->vendor) {
	case FAN53526_VENDOR_FAIRCHILD:
		ret = FUNC1(di);
		break;
	case FAN53555_VENDOR_FAIRCHILD:
		ret = FUNC2(di);
		break;
	case FAN53555_VENDOR_SILERGY:
		ret = FUNC3(di);
		break;
	default:
		FUNC0(di->dev, "vendor %d not supported!\n", di->vendor);
		return -EINVAL;
	}

	return ret;
}