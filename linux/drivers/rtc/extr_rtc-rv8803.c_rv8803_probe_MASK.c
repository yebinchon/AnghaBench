#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct rv8803_data {int type; TYPE_2__* rtc; struct i2c_client* client; int /*<<< orphan*/  flags_lock; } ;
struct nvmem_config {char* name; int word_size; int stride; int size; struct i2c_client* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_15__ {scalar_t__ of_node; } ;
struct i2c_client {scalar_t__ irq; TYPE_4__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {TYPE_4__ dev; } ;
typedef  enum rv8803_type { ____Placeholder_rv8803_type } rv8803_type ;
struct TYPE_14__ {int nvram_old_abi; int max_user_freq; int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; TYPE_1__* ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  alarm_irq_enable; int /*<<< orphan*/  set_alarm; int /*<<< orphan*/  read_alarm; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  RV8803_EXT ; 
 int /*<<< orphan*/  RV8803_EXT_WADA ; 
 int /*<<< orphan*/  RV8803_FLAG ; 
 int RV8803_FLAG_AF ; 
 int RV8803_FLAG_V1F ; 
 int RV8803_FLAG_V2F ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 struct rv8803_data* FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct i2c_client*) ; 
 TYPE_2__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rv8803_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct nvmem_config*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  rv8803_alarm_irq_enable ; 
 int /*<<< orphan*/  rv8803_get_alarm ; 
 int /*<<< orphan*/  rv8803_handle_irq ; 
 int /*<<< orphan*/  rv8803_nvram_read ; 
 int /*<<< orphan*/  rv8803_nvram_write ; 
 int FUNC13 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 TYPE_1__ rv8803_rtc_ops ; 
 int /*<<< orphan*/  rv8803_set_alarm ; 
 int FUNC14 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct rv8803_data*) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct rv8803_data *rv8803;
	int err, flags;
	struct nvmem_config nvmem_cfg = {
		.name = "rv8803_nvram",
		.word_size = 1,
		.stride = 1,
		.size = 1,
		.reg_read = rv8803_nvram_read,
		.reg_write = rv8803_nvram_write,
		.priv = client,
	};

	if (!FUNC7(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_I2C_BLOCK)) {
		FUNC2(&adapter->dev, "doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\n");
		return -EIO;
	}

	rv8803 = FUNC4(&client->dev, sizeof(struct rv8803_data),
			      GFP_KERNEL);
	if (!rv8803)
		return -ENOMEM;

	FUNC9(&rv8803->flags_lock);
	rv8803->client = client;
	if (client->dev.of_node)
		rv8803->type = (enum rv8803_type)
			FUNC10(&client->dev);
	else
		rv8803->type = id->driver_data;
	FUNC8(client, rv8803);

	flags = FUNC13(client, RV8803_FLAG);
	if (flags < 0)
		return flags;

	if (flags & RV8803_FLAG_V1F)
		FUNC3(&client->dev, "Voltage low, temperature compensation stopped.\n");

	if (flags & RV8803_FLAG_V2F)
		FUNC3(&client->dev, "Voltage low, data loss detected.\n");

	if (flags & RV8803_FLAG_AF)
		FUNC3(&client->dev, "An alarm maybe have been missed.\n");

	rv8803->rtc = FUNC6(&client->dev);
	if (FUNC0(rv8803->rtc))
		return FUNC1(rv8803->rtc);

	if (client->irq > 0) {
		err = FUNC5(&client->dev, client->irq,
						NULL, rv8803_handle_irq,
						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
						"rv8803", client);
		if (err) {
			FUNC3(&client->dev, "unable to request IRQ, alarms disabled\n");
			client->irq = 0;
		} else {
			rv8803_rtc_ops.read_alarm = rv8803_get_alarm;
			rv8803_rtc_ops.set_alarm = rv8803_set_alarm;
			rv8803_rtc_ops.alarm_irq_enable = rv8803_alarm_irq_enable;
		}
	}

	err = FUNC14(rv8803->client, RV8803_EXT, RV8803_EXT_WADA);
	if (err)
		return err;

	err = FUNC15(rv8803);
	if (err) {
		FUNC2(&client->dev, "failed to init charger\n");
		return err;
	}

	rv8803->rtc->ops = &rv8803_rtc_ops;
	rv8803->rtc->nvram_old_abi = true;
	rv8803->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	rv8803->rtc->range_max = RTC_TIMESTAMP_END_2099;
	err = FUNC12(rv8803->rtc);
	if (err)
		return err;

	FUNC11(rv8803->rtc, &nvmem_cfg);

	rv8803->rtc->max_user_freq = 1;

	return 0;
}