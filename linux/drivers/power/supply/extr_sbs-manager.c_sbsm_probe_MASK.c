#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sbsm_data {int is_ltc1760; int supported_bats; TYPE_1__* muxc; int /*<<< orphan*/  psy; struct i2c_client* client; } ;
struct power_supply_desc {int name; } ;
struct power_supply_config {int /*<<< orphan*/  of_node; struct sbsm_data* drv_data; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int addr; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_4__ {struct sbsm_data* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPFNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  I2C_MUX_LOCKED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBSM_CMD_BATSYSINFO ; 
 int SBSM_MASK_BAT_SUPPORTED ; 
 int SBSM_MAX_BATS ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct power_supply_desc* FUNC6 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct sbsm_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct power_supply_desc*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (struct i2c_adapter*,struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct sbsm_data*) ; 
 int /*<<< orphan*/  sbsm_default_psy_desc ; 
 int FUNC14 (struct sbsm_data*) ; 
 int FUNC15 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbsm_select ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct sbsm_data *data;
	struct device *dev = &client->dev;
	struct power_supply_desc *psy_desc;
	struct power_supply_config psy_cfg = {};
	int ret = 0, i;

	/* Device listens only at address 0x0a */
	if (client->addr != 0x0a)
		return -EINVAL;

	if (!FUNC9(adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EPFNOSUPPORT;

	data = FUNC7(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC13(client, data);

	data->client = client;
	data->is_ltc1760 = !!FUNC16(id->name, "ltc1760");

	ret  = FUNC15(client, SBSM_CMD_BATSYSINFO);
	if (ret < 0)
		return ret;
	data->supported_bats = ret & SBSM_MASK_BAT_SUPPORTED;
	data->muxc = FUNC11(adapter, dev, SBSM_MAX_BATS, 0,
				   I2C_MUX_LOCKED, &sbsm_select, NULL);
	if (!data->muxc) {
		FUNC3(dev, "failed to alloc i2c mux\n");
		ret = -ENOMEM;
		goto err_mux_alloc;
	}
	data->muxc->priv = data;

	/* register muxed i2c channels. One for each supported battery */
	for (i = 0; i < SBSM_MAX_BATS; ++i) {
		if (data->supported_bats & FUNC0(i)) {
			ret = FUNC10(data->muxc, 0, i + 1, 0);
			if (ret)
				break;
		}
	}
	if (ret) {
		FUNC3(dev, "failed to register i2c mux channel %d\n", i + 1);
		goto err_mux_register;
	}

	psy_desc = FUNC6(dev, &sbsm_default_psy_desc,
				sizeof(struct power_supply_desc),
				GFP_KERNEL);
	if (!psy_desc) {
		ret = -ENOMEM;
		goto err_psy;
	}

	psy_desc->name = FUNC5(dev, GFP_KERNEL, "sbsm-%s",
					FUNC4(&client->dev));
	if (!psy_desc->name) {
		ret = -ENOMEM;
		goto err_psy;
	}
	ret = FUNC14(data);
	if (ret < 0)
		goto err_psy;

	psy_cfg.drv_data = data;
	psy_cfg.of_node = dev->of_node;
	data->psy = FUNC8(dev, psy_desc, &psy_cfg);
	if (FUNC1(data->psy)) {
		ret = FUNC2(data->psy);
		FUNC3(dev, "failed to register power supply %s\n",
			psy_desc->name);
		goto err_psy;
	}

	return 0;

err_psy:
err_mux_register:
	FUNC12(data->muxc);

err_mux_alloc:
	return ret;
}