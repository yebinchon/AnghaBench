#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct s3fwrn5_i2c_phy {int irq_skip; int /*<<< orphan*/  ndev; struct i2c_client* i2c_dev; int /*<<< orphan*/  gpio_fw_wake; int /*<<< orphan*/  gpio_en; int /*<<< orphan*/  mode; int /*<<< orphan*/  mutex; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  S3FWRN5_I2C_DRIVER_NAME ; 
 int /*<<< orphan*/  S3FWRN5_I2C_MAX_PAYLOAD ; 
 int /*<<< orphan*/  S3FWRN5_MODE_COLD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct s3fwrn5_i2c_phy* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct s3fwrn5_i2c_phy*) ; 
 int /*<<< orphan*/  i2c_phy_ops ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct s3fwrn5_i2c_phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s3fwrn5_i2c_irq_thread_fn ; 
 int FUNC5 (struct i2c_client*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct s3fwrn5_i2c_phy*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct s3fwrn5_i2c_phy *phy;
	int ret;

	phy = FUNC1(&client->dev, sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	FUNC4(&phy->mutex);
	phy->mode = S3FWRN5_MODE_COLD;
	phy->irq_skip = true;

	phy->i2c_dev = client;
	FUNC3(client, phy);

	ret = FUNC5(client);
	if (ret < 0)
		return ret;

	ret = FUNC0(&phy->i2c_dev->dev, phy->gpio_en,
		GPIOF_OUT_INIT_HIGH, "s3fwrn5_en");
	if (ret < 0)
		return ret;

	ret = FUNC0(&phy->i2c_dev->dev, phy->gpio_fw_wake,
		GPIOF_OUT_INIT_LOW, "s3fwrn5_fw_wake");
	if (ret < 0)
		return ret;

	ret = FUNC6(&phy->ndev, phy, &phy->i2c_dev->dev, &i2c_phy_ops,
		S3FWRN5_I2C_MAX_PAYLOAD);
	if (ret < 0)
		return ret;

	ret = FUNC2(&client->dev, phy->i2c_dev->irq, NULL,
		s3fwrn5_i2c_irq_thread_fn, IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
		S3FWRN5_I2C_DRIVER_NAME, phy);
	if (ret)
		FUNC7(phy->ndev);

	return ret;
}