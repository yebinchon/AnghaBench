#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reg_field {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct bq25890_device {scalar_t__ chip_id; TYPE_1__ usb_nb; int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  usb_work; int /*<<< orphan*/ * rmap_fields; int /*<<< orphan*/  rmap; int /*<<< orphan*/  lock; struct device* dev; struct i2c_client* client; } ;

/* Variables and functions */
 int FUNC0 (struct reg_field*) ; 
 scalar_t__ BQ25890_ID ; 
 int /*<<< orphan*/  BQ25890_IRQ_PIN ; 
 scalar_t__ BQ25895_ID ; 
 scalar_t__ BQ25896_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  F_PN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 scalar_t__ FUNC5 (struct bq25890_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bq25890_device*) ; 
 int FUNC7 (struct bq25890_device*) ; 
 int /*<<< orphan*/  bq25890_irq_handler_thread ; 
 int FUNC8 (struct bq25890_device*) ; 
 int FUNC9 (struct bq25890_device*) ; 
 struct reg_field* bq25890_reg_fields ; 
 int /*<<< orphan*/  bq25890_regmap_config ; 
 int /*<<< orphan*/  bq25890_usb_notifier ; 
 int /*<<< orphan*/  bq25890_usb_work ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,...) ; 
 struct bq25890_device* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int /*<<< orphan*/ ,struct reg_field const) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bq25890_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_client*,struct bq25890_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct bq25890_device *bq;
	int ret;
	int i;

	if (!FUNC16(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC10(dev, "No support for SMBUS_BYTE_DATA\n");
		return -ENODEV;
	}

	bq = FUNC11(dev, sizeof(*bq), GFP_KERNEL);
	if (!bq)
		return -ENOMEM;

	bq->client = client;
	bq->dev = dev;

	FUNC18(&bq->lock);

	bq->rmap = FUNC13(client, &bq25890_regmap_config);
	if (FUNC2(bq->rmap)) {
		FUNC10(dev, "failed to allocate register map\n");
		return FUNC4(bq->rmap);
	}

	for (i = 0; i < FUNC0(bq25890_reg_fields); i++) {
		const struct reg_field *reg_fields = bq25890_reg_fields;

		bq->rmap_fields[i] = FUNC12(dev, bq->rmap,
							     reg_fields[i]);
		if (FUNC2(bq->rmap_fields[i])) {
			FUNC10(dev, "cannot allocate regmap field\n");
			return FUNC4(bq->rmap_fields[i]);
		}
	}

	FUNC17(client, bq);

	bq->chip_id = FUNC5(bq, F_PN);
	if (bq->chip_id < 0) {
		FUNC10(dev, "Cannot read chip ID.\n");
		return bq->chip_id;
	}

	if ((bq->chip_id != BQ25890_ID) && (bq->chip_id != BQ25895_ID)
			&& (bq->chip_id != BQ25896_ID)) {
		FUNC10(dev, "Chip with ID=%d, not supported!\n", bq->chip_id);
		return -ENODEV;
	}

	if (!dev->platform_data) {
		ret = FUNC6(bq);
		if (ret < 0) {
			FUNC10(dev, "Cannot read device properties.\n");
			return ret;
		}
	} else {
		return -ENODEV;
	}

	ret = FUNC7(bq);
	if (ret < 0) {
		FUNC10(dev, "Cannot initialize the chip.\n");
		return ret;
	}

	if (client->irq <= 0)
		client->irq = FUNC8(bq);

	if (client->irq < 0) {
		FUNC10(dev, "No irq resource found.\n");
		return client->irq;
	}

	/* OTG reporting */
	bq->usb_phy = FUNC15(dev, USB_PHY_TYPE_USB2);
	if (!FUNC3(bq->usb_phy)) {
		FUNC1(&bq->usb_work, bq25890_usb_work);
		bq->usb_nb.notifier_call = bq25890_usb_notifier;
		FUNC19(bq->usb_phy, &bq->usb_nb);
	}

	ret = FUNC14(dev, client->irq, NULL,
					bq25890_irq_handler_thread,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					BQ25890_IRQ_PIN, bq);
	if (ret)
		goto irq_fail;

	ret = FUNC9(bq);
	if (ret < 0) {
		FUNC10(dev, "Failed to register power supply\n");
		goto irq_fail;
	}

	return 0;

irq_fail:
	if (!FUNC3(bq->usb_phy))
		FUNC20(bq->usb_phy, &bq->usb_nb);

	return ret;
}