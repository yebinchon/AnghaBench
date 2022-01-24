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
struct reg_field {int dummy; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int /*<<< orphan*/  platform_data; TYPE_1__* driver; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct bq24257_device {int chip; int iilimit_autoset_enable; struct device* dev; int /*<<< orphan*/  pg; int /*<<< orphan*/  iilimit_setup_work; int /*<<< orphan*/ * rmap_fields; int /*<<< orphan*/  rmap; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef  enum bq2425x_chip { ____Placeholder_bq2425x_chip } bq2425x_chip ;
struct TYPE_2__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct reg_field*) ; 
 scalar_t__ BQ24250 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  F_RESET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct acpi_device_id* FUNC5 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC6 (struct bq24257_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct bq24257_device*) ; 
 int FUNC8 (struct bq24257_device*) ; 
 int /*<<< orphan*/  bq24257_iilimit_setup_work ; 
 int /*<<< orphan*/  bq24257_irq_handler_thread ; 
 int /*<<< orphan*/  FUNC9 (struct bq24257_device*) ; 
 int FUNC10 (struct bq24257_device*) ; 
 struct reg_field* bq24257_reg_fields ; 
 int /*<<< orphan*/  bq24257_regmap_config ; 
 int /*<<< orphan*/ * bq2425x_chip_name ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 struct bq24257_device* FUNC13 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,int /*<<< orphan*/ ,struct reg_field const) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bq24257_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct i2c_client*,struct bq24257_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	const struct acpi_device_id *acpi_id;
	struct bq24257_device *bq;
	int ret;
	int i;

	if (!FUNC17(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC11(dev, "No support for SMBUS_BYTE_DATA\n");
		return -ENODEV;
	}

	bq = FUNC13(dev, sizeof(*bq), GFP_KERNEL);
	if (!bq)
		return -ENOMEM;

	bq->client = client;
	bq->dev = dev;

	if (FUNC0(dev)) {
		acpi_id = FUNC5(dev->driver->acpi_match_table,
					    &client->dev);
		if (!acpi_id) {
			FUNC11(dev, "Failed to match ACPI device\n");
			return -ENODEV;
		}
		bq->chip = (enum bq2425x_chip)acpi_id->driver_data;
	} else {
		bq->chip = (enum bq2425x_chip)id->driver_data;
	}

	FUNC19(&bq->lock);

	bq->rmap = FUNC15(client, &bq24257_regmap_config);
	if (FUNC3(bq->rmap)) {
		FUNC11(dev, "failed to allocate register map\n");
		return FUNC4(bq->rmap);
	}

	for (i = 0; i < FUNC1(bq24257_reg_fields); i++) {
		const struct reg_field *reg_fields = bq24257_reg_fields;

		bq->rmap_fields[i] = FUNC14(dev, bq->rmap,
							     reg_fields[i]);
		if (FUNC3(bq->rmap_fields[i])) {
			FUNC11(dev, "cannot allocate regmap field\n");
			return FUNC4(bq->rmap_fields[i]);
		}
	}

	FUNC18(client, bq);

	if (!dev->platform_data) {
		ret = FUNC7(bq);
		if (ret < 0) {
			FUNC11(dev, "Cannot read device properties.\n");
			return ret;
		}
	} else {
		return -ENODEV;
	}

	/*
	 * The BQ24250 doesn't support the D+/D- based charger type detection
	 * used for the automatic setting of the input current limit setting so
	 * explicitly disable that feature.
	 */
	if (bq->chip == BQ24250)
		bq->iilimit_autoset_enable = false;

	if (bq->iilimit_autoset_enable)
		FUNC2(&bq->iilimit_setup_work,
				  bq24257_iilimit_setup_work);

	/*
	 * The BQ24250 doesn't have a dedicated Power Good (PG) pin so let's
	 * not probe for it and instead use a SW-based approach to determine
	 * the PG state. We also use a SW-based approach for all other devices
	 * if the PG pin is either not defined or can't be probed.
	 */
	if (bq->chip != BQ24250)
		FUNC9(bq);

	if (FUNC4(bq->pg) == -EPROBE_DEFER)
		return FUNC4(bq->pg);
	else if (!bq->pg)
		FUNC12(bq->dev, "using SW-based power-good detection\n");

	/* reset all registers to defaults */
	ret = FUNC6(bq, F_RESET, 1);
	if (ret < 0)
		return ret;

	/*
	 * Put the RESET bit back to 0, in cache. For some reason the HW always
	 * returns 1 on this bit, so this is the only way to avoid resetting the
	 * chip every time we update another field in this register.
	 */
	ret = FUNC6(bq, F_RESET, 0);
	if (ret < 0)
		return ret;

	ret = FUNC8(bq);
	if (ret < 0) {
		FUNC11(dev, "Cannot initialize the chip.\n");
		return ret;
	}

	ret = FUNC10(bq);
	if (ret < 0) {
		FUNC11(dev, "Failed to register power supply\n");
		return ret;
	}

	ret = FUNC16(dev, client->irq, NULL,
					bq24257_irq_handler_thread,
					IRQF_TRIGGER_FALLING |
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					bq2425x_chip_name[bq->chip], bq);
	if (ret) {
		FUNC11(dev, "Failed to request IRQ #%d\n", client->irq);
		return ret;
	}

	return 0;
}