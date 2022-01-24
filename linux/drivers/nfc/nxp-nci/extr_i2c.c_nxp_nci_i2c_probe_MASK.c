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
struct nxp_nci_i2c_phy {int /*<<< orphan*/  ndev; void* gpiod_fw; void* gpiod_en; struct i2c_client* i2c_dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NXP_NCI_I2C_DRIVER_NAME ; 
 int /*<<< orphan*/  NXP_NCI_I2C_MAX_PAYLOAD ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  acpi_nxp_nci_gpios ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct nxp_nci_i2c_phy* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_phy_ops ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct nxp_nci_i2c_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  nxp_nci_i2c_irq_thread_fn ; 
 int FUNC8 (struct nxp_nci_i2c_phy*,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nxp_nci_i2c_phy*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct nxp_nci_i2c_phy *phy;
	int r;

	if (!FUNC5(client->adapter, I2C_FUNC_I2C)) {
		FUNC7(&client->dev, "Need I2C_FUNC_I2C\n");
		return -ENODEV;
	}

	phy = FUNC4(&client->dev, sizeof(struct nxp_nci_i2c_phy),
			   GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	phy->i2c_dev = client;
	FUNC6(client, phy);

	r = FUNC2(dev, acpi_nxp_nci_gpios);
	if (r)
		return r;

	phy->gpiod_en = FUNC3(dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(phy->gpiod_en)) {
		FUNC7(dev, "Failed to get EN gpio\n");
		return FUNC1(phy->gpiod_en);
	}

	phy->gpiod_fw = FUNC3(dev, "firmware", GPIOD_OUT_LOW);
	if (FUNC0(phy->gpiod_fw)) {
		FUNC7(dev, "Failed to get FW gpio\n");
		return FUNC1(phy->gpiod_fw);
	}

	r = FUNC8(phy, &client->dev, &i2c_phy_ops,
			  NXP_NCI_I2C_MAX_PAYLOAD, &phy->ndev);
	if (r < 0)
		return r;

	r = FUNC9(client->irq, NULL,
				 nxp_nci_i2c_irq_thread_fn,
				 IRQF_TRIGGER_RISING | IRQF_ONESHOT,
				 NXP_NCI_I2C_DRIVER_NAME, phy);
	if (r < 0)
		FUNC7(&client->dev, "Unable to register IRQ handler\n");

	return r;
}