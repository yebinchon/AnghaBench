#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvmem_config {char* name; int stride; int word_size; int size; struct isl12026* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/ * base_dev; } ;
struct isl12026 {TYPE_1__* rtc; int /*<<< orphan*/  nvm_client; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  ISL12026_EEPROM_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct isl12026* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct isl12026*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  isl12026_nvm_read ; 
 int /*<<< orphan*/  isl12026_nvm_write ; 
 int /*<<< orphan*/  isl12026_rtc_ops ; 
 int FUNC9 (TYPE_1__*,struct nvmem_config*) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client)
{
	struct isl12026 *priv;
	int ret;
	struct nvmem_config nvm_cfg = {
		.name = "isl12026-",
		.base_dev = &client->dev,
		.stride = 1,
		.word_size = 1,
		.size = 512,
		.reg_read = isl12026_nvm_read,
		.reg_write = isl12026_nvm_write,
	};

	if (!FUNC5(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	priv = FUNC3(&client->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC7(client, priv);

	FUNC8(client);

	priv->nvm_client = FUNC6(client->adapter, ISL12026_EEPROM_ADDR);
	if (FUNC0(priv->nvm_client))
		return FUNC1(priv->nvm_client);

	priv->rtc = FUNC4(&client->dev);
	ret = FUNC2(priv->rtc);
	if (ret)
		return ret;

	priv->rtc->ops = &isl12026_rtc_ops;
	nvm_cfg.priv = priv;
	ret = FUNC9(priv->rtc, &nvm_cfg);
	if (ret)
		return ret;

	return FUNC10(priv->rtc);
}