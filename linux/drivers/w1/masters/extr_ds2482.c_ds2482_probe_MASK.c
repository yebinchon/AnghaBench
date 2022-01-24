#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct ds2482_data {int w1_count; TYPE_1__* w1_ch; int /*<<< orphan*/  access_lock; struct i2c_client* client; } ;
struct TYPE_5__ {int /*<<< orphan*/  set_pullup; int /*<<< orphan*/  reset_bus; int /*<<< orphan*/  triplet; int /*<<< orphan*/  touch_bit; int /*<<< orphan*/  write_byte; int /*<<< orphan*/  read_byte; TYPE_1__* data; } ;
struct TYPE_4__ {int channel; TYPE_2__ w1_bm; struct ds2482_data* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2482_CMD_RESET ; 
 int /*<<< orphan*/  DS2482_CMD_WRITE_CONFIG ; 
 int DS2482_REG_STS_LL ; 
 int DS2482_REG_STS_RST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ds2482_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ds2482_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ds2482_data*,int) ; 
 int /*<<< orphan*/  ds2482_w1_read_byte ; 
 int /*<<< orphan*/  ds2482_w1_reset_bus ; 
 int /*<<< orphan*/  ds2482_w1_set_pullup ; 
 int /*<<< orphan*/  ds2482_w1_touch_bit ; 
 int /*<<< orphan*/  ds2482_w1_triplet ; 
 int /*<<< orphan*/  ds2482_w1_write_byte ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ds2482_data*) ; 
 int FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct ds2482_data*) ; 
 struct ds2482_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ds2482_data *data;
	int err = -ENODEV;
	int temp1;
	int idx;

	if (!FUNC5(client->adapter,
				     I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
				     I2C_FUNC_SMBUS_BYTE))
		return -ENODEV;

	if (!(data = FUNC9(sizeof(struct ds2482_data), GFP_KERNEL))) {
		err = -ENOMEM;
		goto exit;
	}

	data->client = client;
	FUNC6(client, data);

	/* Reset the device (sets the read_ptr to status) */
	if (FUNC2(data, DS2482_CMD_RESET) < 0) {
		FUNC0(&client->dev, "DS2482 reset failed.\n");
		goto exit_free;
	}

	/* Sleep at least 525ns to allow the reset to complete */
	FUNC11(525);

	/* Read the status byte - only reset bit and line should be set */
	temp1 = FUNC7(client);
	if (temp1 != (DS2482_REG_STS_LL | DS2482_REG_STS_RST)) {
		FUNC0(&client->dev, "DS2482 reset status "
			 "0x%02X - not a DS2482\n", temp1);
		goto exit_free;
	}

	/* Detect the 8-port version */
	data->w1_count = 1;
	if (FUNC4(data, 7) == 0)
		data->w1_count = 8;

	/* Set all config items to 0 (off) */
	FUNC3(data, DS2482_CMD_WRITE_CONFIG,
		FUNC1(0x00));

	FUNC10(&data->access_lock);

	/* Register 1-wire interface(s) */
	for (idx = 0; idx < data->w1_count; idx++) {
		data->w1_ch[idx].pdev = data;
		data->w1_ch[idx].channel = idx;

		/* Populate all the w1 bus master stuff */
		data->w1_ch[idx].w1_bm.data       = &data->w1_ch[idx];
		data->w1_ch[idx].w1_bm.read_byte  = ds2482_w1_read_byte;
		data->w1_ch[idx].w1_bm.write_byte = ds2482_w1_write_byte;
		data->w1_ch[idx].w1_bm.touch_bit  = ds2482_w1_touch_bit;
		data->w1_ch[idx].w1_bm.triplet    = ds2482_w1_triplet;
		data->w1_ch[idx].w1_bm.reset_bus  = ds2482_w1_reset_bus;
		data->w1_ch[idx].w1_bm.set_pullup = ds2482_w1_set_pullup;

		err = FUNC12(&data->w1_ch[idx].w1_bm);
		if (err) {
			data->w1_ch[idx].pdev = NULL;
			goto exit_w1_remove;
		}
	}

	return 0;

exit_w1_remove:
	for (idx = 0; idx < data->w1_count; idx++) {
		if (data->w1_ch[idx].pdev != NULL)
			FUNC13(&data->w1_ch[idx].w1_bm);
	}
exit_free:
	FUNC8(data);
exit:
	return err;
}