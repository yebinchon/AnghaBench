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
struct smb347_charger_platform_data {scalar_t__ irq_gpio; scalar_t__ use_mains; scalar_t__ use_usb; } ;
struct smb347_charger {void* battery; void* mains; struct smb347_charger_platform_data const* pdata; void* usb; void* regmap; struct device* dev; int /*<<< orphan*/  lock; } ;
struct power_supply_config {char** supplied_to; struct smb347_charger* drv_data; int /*<<< orphan*/  num_supplicants; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct smb347_charger_platform_data* platform_data; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct smb347_charger* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct smb347_charger*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (struct device*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  smb347_battery_desc ; 
 int FUNC10 (struct smb347_charger*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb347_charger*) ; 
 int FUNC12 (struct smb347_charger*,struct i2c_client*) ; 
 int /*<<< orphan*/  smb347_mains_desc ; 
 int /*<<< orphan*/  smb347_regmap ; 
 int /*<<< orphan*/  smb347_usb_desc ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	static char *battery[] = { "smb347-battery" };
	const struct smb347_charger_platform_data *pdata;
	struct power_supply_config mains_usb_cfg = {}, battery_cfg = {};
	struct device *dev = &client->dev;
	struct smb347_charger *smb;
	int ret;

	pdata = dev->platform_data;
	if (!pdata)
		return -EINVAL;

	if (!pdata->use_mains && !pdata->use_usb)
		return -EINVAL;

	smb = FUNC4(dev, sizeof(*smb), GFP_KERNEL);
	if (!smb)
		return -ENOMEM;

	FUNC6(client, smb);

	FUNC7(&smb->lock);
	smb->dev = &client->dev;
	smb->pdata = pdata;

	smb->regmap = FUNC5(client, &smb347_regmap);
	if (FUNC1(smb->regmap))
		return FUNC2(smb->regmap);

	ret = FUNC10(smb);
	if (ret < 0)
		return ret;

	mains_usb_cfg.supplied_to = battery;
	mains_usb_cfg.num_supplicants = FUNC0(battery);
	mains_usb_cfg.drv_data = smb;
	if (smb->pdata->use_mains) {
		smb->mains = FUNC8(dev, &smb347_mains_desc,
						   &mains_usb_cfg);
		if (FUNC1(smb->mains))
			return FUNC2(smb->mains);
	}

	if (smb->pdata->use_usb) {
		smb->usb = FUNC8(dev, &smb347_usb_desc,
						 &mains_usb_cfg);
		if (FUNC1(smb->usb)) {
			if (smb->pdata->use_mains)
				FUNC9(smb->mains);
			return FUNC2(smb->usb);
		}
	}

	battery_cfg.drv_data = smb;
	smb->battery = FUNC8(dev, &smb347_battery_desc,
					     &battery_cfg);
	if (FUNC1(smb->battery)) {
		if (smb->pdata->use_usb)
			FUNC9(smb->usb);
		if (smb->pdata->use_mains)
			FUNC9(smb->mains);
		return FUNC2(smb->battery);
	}

	/*
	 * Interrupt pin is optional. If it is connected, we setup the
	 * interrupt support here.
	 */
	if (pdata->irq_gpio >= 0) {
		ret = FUNC12(smb, client);
		if (ret < 0) {
			FUNC3(dev, "failed to initialize IRQ: %d\n", ret);
			FUNC3(dev, "disabling IRQ support\n");
		} else {
			FUNC11(smb);
		}
	}

	return 0;
}