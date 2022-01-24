#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_17__ {struct isl1208_state* priv; int /*<<< orphan*/  size; } ;
struct isl1208_state {TYPE_1__* rtc; TYPE_3__ nvmem_config; TYPE_5__* config; } ;
struct i2c_device_id {size_t driver_data; } ;
struct TYPE_19__ {struct device_node* of_node; } ;
struct i2c_client {int irq; TYPE_6__ dev; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_18__ {scalar_t__ has_timestamp; scalar_t__ has_tamper; int /*<<< orphan*/  nvmem_length; } ;
struct TYPE_16__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int ISL1208_REG_SR_RTCF ; 
 int /*<<< orphan*/  ISL1219_REG_EV ; 
 int ISL1219_REG_EV_EVEN ; 
 int ISL1219_REG_EV_EVIENB ; 
 size_t ISL_LAST_ID ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 struct isl1208_state* FUNC4 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct isl1208_state*) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* isl1208_configs ; 
 int FUNC10 (struct i2c_client*) ; 
 scalar_t__ FUNC11 (struct i2c_client*) ; 
 TYPE_3__ isl1208_nvmem_config ; 
 int /*<<< orphan*/  isl1208_rtc_ops ; 
 int /*<<< orphan*/  isl1208_rtc_sysfs_files ; 
 int FUNC12 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  isl1219_rtc_sysfs_files ; 
 TYPE_5__* FUNC13 (TYPE_6__*) ; 
 int FUNC14 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*,char*,scalar_t__*) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*,TYPE_3__*) ; 
 int FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC19(struct i2c_client *client, const struct i2c_device_id *id)
{
	int rc = 0;
	struct isl1208_state *isl1208;
	int evdet_irq = -1;

	if (!FUNC6(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	if (FUNC11(client) < 0)
		return -ENODEV;

	/* Allocate driver state, point i2c client data to it */
	isl1208 = FUNC4(&client->dev, sizeof(*isl1208), GFP_KERNEL);
	if (!isl1208)
		return -ENOMEM;
	FUNC7(client, isl1208);

	/* Determine which chip we have */
	if (client->dev.of_node) {
		isl1208->config = FUNC13(&client->dev);
		if (!isl1208->config)
			return -ENODEV;
	} else {
		if (id->driver_data >= ISL_LAST_ID)
			return -ENODEV;
		isl1208->config = &isl1208_configs[id->driver_data];
	}

	isl1208->rtc = FUNC5(&client->dev);
	if (FUNC0(isl1208->rtc))
		return FUNC1(isl1208->rtc);

	isl1208->rtc->ops = &isl1208_rtc_ops;

	/* Setup nvmem configuration in driver state struct */
	isl1208->nvmem_config = isl1208_nvmem_config;
	isl1208->nvmem_config.size = isl1208->config->nvmem_length;
	isl1208->nvmem_config.priv = isl1208;

	rc = FUNC10(client);
	if (rc < 0) {
		FUNC2(&client->dev, "reading status failed\n");
		return rc;
	}

	if (rc & ISL1208_REG_SR_RTCF)
		FUNC3(&client->dev, "rtc power failure detected, "
			 "please set clock.\n");

	if (isl1208->config->has_tamper) {
		struct device_node *np = client->dev.of_node;
		u32 evienb;

		rc = FUNC8(client, ISL1219_REG_EV);
		if (rc < 0) {
			FUNC2(&client->dev, "failed to read EV reg\n");
			return rc;
		}
		rc |= ISL1219_REG_EV_EVEN;
		if (!FUNC15(np, "isil,ev-evienb", &evienb)) {
			if (evienb)
				rc |= ISL1219_REG_EV_EVIENB;
			else
				rc &= ~ISL1219_REG_EV_EVIENB;
		}
		rc = FUNC9(client, ISL1219_REG_EV, rc);
		if (rc < 0) {
			FUNC2(&client->dev, "could not enable tamper detection\n");
			return rc;
		}
		evdet_irq = FUNC14(np, "evdet");
	}
	if (isl1208->config->has_timestamp) {
		rc = FUNC16(isl1208->rtc, &isl1219_rtc_sysfs_files);
		if (rc)
			return rc;
	}

	rc = FUNC16(isl1208->rtc, &isl1208_rtc_sysfs_files);
	if (rc)
		return rc;

	if (client->irq > 0)
		rc = FUNC12(client, client->irq);
	if (rc)
		return rc;

	if (evdet_irq > 0 && evdet_irq != client->irq)
		rc = FUNC12(client, evdet_irq);
	if (rc)
		return rc;

	rc = FUNC17(isl1208->rtc, &isl1208->nvmem_config);
	if (rc)
		return rc;

	return FUNC18(isl1208->rtc);
}