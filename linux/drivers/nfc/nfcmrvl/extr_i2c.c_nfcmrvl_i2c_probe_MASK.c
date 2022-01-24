#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfcmrvl_platform_data {int irq_polarity; int /*<<< orphan*/  irq; } ;
struct nfcmrvl_i2c_drv_data {TYPE_1__* priv; struct i2c_client* i2c; TYPE_2__* dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {scalar_t__ of_node; struct nfcmrvl_platform_data* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_8__ {int support_fw_dnld; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NFCMRVL_PHY_I2C ; 
 int FUNC1 (TYPE_1__*) ; 
 struct nfcmrvl_i2c_drv_data* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct nfcmrvl_i2c_drv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_ops ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct nfcmrvl_i2c_drv_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  nfcmrvl_i2c_int_irq_thread_fn ; 
 scalar_t__ FUNC7 (scalar_t__,struct nfcmrvl_platform_data*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,struct nfcmrvl_i2c_drv_data*,int /*<<< orphan*/ *,TYPE_2__*,struct nfcmrvl_platform_data*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct nfcmrvl_i2c_drv_data *drv_data;
	struct nfcmrvl_platform_data *pdata;
	struct nfcmrvl_platform_data config;
	int ret;

	if (!FUNC4(client->adapter, I2C_FUNC_I2C)) {
		FUNC6(&client->dev, "Need I2C_FUNC_I2C\n");
		return -ENODEV;
	}

	drv_data = FUNC2(&client->dev, sizeof(*drv_data), GFP_KERNEL);
	if (!drv_data)
		return -ENOMEM;

	drv_data->i2c = client;
	drv_data->dev = &client->dev;
	drv_data->priv = NULL;

	FUNC5(client, drv_data);

	pdata = client->dev.platform_data;

	if (!pdata && client->dev.of_node)
		if (FUNC7(client->dev.of_node, &config) == 0)
			pdata = &config;

	if (!pdata)
		return -EINVAL;

	/* Request the read IRQ */
	ret = FUNC3(&drv_data->i2c->dev, pdata->irq,
					NULL, nfcmrvl_i2c_int_irq_thread_fn,
					pdata->irq_polarity | IRQF_ONESHOT,
					"nfcmrvl_i2c_int", drv_data);
	if (ret < 0) {
		FUNC6(&drv_data->i2c->dev,
			"Unable to register IRQ handler\n");
		return ret;
	}

	drv_data->priv = FUNC8(NFCMRVL_PHY_I2C,
						  drv_data, &i2c_ops,
						  &drv_data->i2c->dev, pdata);

	if (FUNC0(drv_data->priv))
		return FUNC1(drv_data->priv);

	drv_data->priv->support_fw_dnld = true;

	return 0;
}