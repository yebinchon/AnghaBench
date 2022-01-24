#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rx8010_data {TYPE_2__* rtc; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int max_user_freq; } ;
struct TYPE_6__ {int /*<<< orphan*/  alarm_irq_enable; int /*<<< orphan*/  set_alarm; int /*<<< orphan*/  read_alarm; } ;

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
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct rx8010_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct i2c_client*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rx8010_data*) ; 
 int /*<<< orphan*/  rx8010_alarm_irq_enable ; 
 int FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  rx8010_irq_1_handler ; 
 int /*<<< orphan*/  rx8010_read_alarm ; 
 TYPE_1__ rx8010_rtc_ops ; 
 int /*<<< orphan*/  rx8010_set_alarm ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct rx8010_data *rx8010;
	int err = 0;

	if (!FUNC7(adapter, I2C_FUNC_SMBUS_BYTE_DATA
		| I2C_FUNC_SMBUS_I2C_BLOCK)) {
		FUNC2(&adapter->dev, "doesn't support required functionality\n");
		return -EIO;
	}

	rx8010 = FUNC4(&client->dev, sizeof(struct rx8010_data),
			      GFP_KERNEL);
	if (!rx8010)
		return -ENOMEM;

	rx8010->client = client;
	FUNC8(client, rx8010);

	err = FUNC9(client);
	if (err)
		return err;

	if (client->irq > 0) {
		FUNC3(&client->dev, "IRQ %d supplied\n", client->irq);
		err = FUNC5(&client->dev, client->irq, NULL,
						rx8010_irq_1_handler,
						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
						"rx8010", client);

		if (err) {
			FUNC2(&client->dev, "unable to request IRQ\n");
			client->irq = 0;
		} else {
			rx8010_rtc_ops.read_alarm = rx8010_read_alarm;
			rx8010_rtc_ops.set_alarm = rx8010_set_alarm;
			rx8010_rtc_ops.alarm_irq_enable = rx8010_alarm_irq_enable;
		}
	}

	rx8010->rtc = FUNC6(&client->dev, client->name,
		&rx8010_rtc_ops, THIS_MODULE);

	if (FUNC0(rx8010->rtc)) {
		FUNC2(&client->dev, "unable to register the class device\n");
		return FUNC1(rx8010->rtc);
	}

	rx8010->rtc->max_user_freq = 1;

	return err;
}