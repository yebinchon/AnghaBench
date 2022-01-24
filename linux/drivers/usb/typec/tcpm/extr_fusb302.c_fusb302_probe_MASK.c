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
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; scalar_t__ irq; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fwnode; } ;
struct fusb302_chip {int /*<<< orphan*/  wq; TYPE_1__ tcpc_dev; int /*<<< orphan*/  tcpm_port; scalar_t__ gpio_int_n_irq; int /*<<< orphan*/  bc_lvl_handler; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  irq_lock; struct device* dev; int /*<<< orphan*/  vbus; int /*<<< orphan*/  extcon; int /*<<< orphan*/  lock; struct i2c_client* i2c_client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (struct device*,char*,char const**) ; 
 struct fusb302_chip* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  fusb302_bc_lvl_handler_work ; 
 int /*<<< orphan*/  FUNC13 (struct fusb302_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct fusb302_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  fusb302_irq_intn ; 
 int /*<<< orphan*/  fusb302_irq_work ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct i2c_client*,struct fusb302_chip*) ; 
 int FUNC19 (struct fusb302_chip*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (scalar_t__,int /*<<< orphan*/ ,int,char*,struct fusb302_chip*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct fusb302_chip *chip;
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	const char *name;
	int ret = 0;

	if (!FUNC17(adapter, I2C_FUNC_SMBUS_I2C_BLOCK)) {
		FUNC6(&client->dev,
			"I2C/SMBus block functionality not supported!\n");
		return -ENODEV;
	}
	chip = FUNC9(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->i2c_client = client;
	chip->dev = &client->dev;
	FUNC21(&chip->lock);

	/*
	 * Devicetree platforms should get extcon via phandle (not yet
	 * supported). On ACPI platforms, we get the name from a device prop.
	 * This device prop is for kernel internal use only and is expected
	 * to be set by the platform code which also registers the i2c client
	 * for the fusb302.
	 */
	if (FUNC8(dev, "linux,extcon-name", &name) == 0) {
		chip->extcon = FUNC12(name);
		if (!chip->extcon)
			return -EPROBE_DEFER;
	}

	chip->vbus = FUNC10(chip->dev, "vbus");
	if (FUNC2(chip->vbus))
		return FUNC3(chip->vbus);

	chip->wq = FUNC4(FUNC7(chip->dev));
	if (!chip->wq)
		return -ENOMEM;

	FUNC23(&chip->irq_lock);
	FUNC1(&chip->irq_work, fusb302_irq_work);
	FUNC0(&chip->bc_lvl_handler, fusb302_bc_lvl_handler_work);
	FUNC20(&chip->tcpc_dev);
	FUNC14(chip);

	if (client->irq) {
		chip->gpio_int_n_irq = client->irq;
	} else {
		ret = FUNC19(chip);
		if (ret < 0)
			goto destroy_workqueue;
	}

	chip->tcpc_dev.fwnode = FUNC15(dev);
	if (FUNC2(chip->tcpc_dev.fwnode)) {
		ret = FUNC3(chip->tcpc_dev.fwnode);
		goto destroy_workqueue;
	}

	chip->tcpm_port = FUNC24(&client->dev, &chip->tcpc_dev);
	if (FUNC2(chip->tcpm_port)) {
		FUNC16(chip->tcpc_dev.fwnode);
		ret = FUNC3(chip->tcpm_port);
		if (ret != -EPROBE_DEFER)
			FUNC6(dev, "cannot register tcpm port, ret=%d", ret);
		goto destroy_workqueue;
	}

	ret = FUNC22(chip->gpio_int_n_irq, fusb302_irq_intn,
			  IRQF_ONESHOT | IRQF_TRIGGER_LOW,
			  "fsc_interrupt_int_n", chip);
	if (ret < 0) {
		FUNC6(dev, "cannot request IRQ for GPIO Int_N, ret=%d", ret);
		goto tcpm_unregister_port;
	}
	FUNC11(chip->gpio_int_n_irq);
	FUNC18(client, chip);

	return ret;

tcpm_unregister_port:
	FUNC25(chip->tcpm_port);
	FUNC16(chip->tcpc_dev.fwnode);
destroy_workqueue:
	FUNC13(chip);
	FUNC5(chip->wq);

	return ret;
}