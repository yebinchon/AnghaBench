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
struct rx8025_data {TYPE_1__* rtc; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int max_user_freq; int uie_unsupported; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct rx8025_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct i2c_client*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rx8025_data*) ; 
 int /*<<< orphan*/  rx8025_handle_irq ; 
 int FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  rx8025_rtc_ops ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct rx8025_data *rx8025;
	int err = 0;

	if (!FUNC7(adapter, I2C_FUNC_SMBUS_BYTE_DATA
				     | I2C_FUNC_SMBUS_I2C_BLOCK)) {
		FUNC2(&adapter->dev,
			"doesn't support required functionality\n");
		return -EIO;
	}

	rx8025 = FUNC4(&client->dev, sizeof(*rx8025), GFP_KERNEL);
	if (!rx8025)
		return -ENOMEM;

	rx8025->client = client;
	FUNC8(client, rx8025);

	err = FUNC9(client);
	if (err)
		return err;

	rx8025->rtc = FUNC6(&client->dev, client->name,
					  &rx8025_rtc_ops, THIS_MODULE);
	if (FUNC0(rx8025->rtc)) {
		FUNC2(&client->dev, "unable to register the class device\n");
		return FUNC1(rx8025->rtc);
	}

	if (client->irq > 0) {
		FUNC3(&client->dev, "IRQ %d supplied\n", client->irq);
		err = FUNC5(&client->dev, client->irq, NULL,
						rx8025_handle_irq,
						IRQF_ONESHOT,
						"rx8025", client);
		if (err) {
			FUNC2(&client->dev, "unable to request IRQ, alarms disabled\n");
			client->irq = 0;
		}
	}

	rx8025->rtc->max_user_freq = 1;

	/* the rx8025 alarm only supports a minute accuracy */
	rx8025->rtc->uie_unsupported = 1;

	err = FUNC10(&client->dev);
	return err;
}