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
struct microread_i2c_phy {int /*<<< orphan*/  hdev; struct i2c_client* i2c_dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  LLC_SHDLC_NAME ; 
 int /*<<< orphan*/  MICROREAD_I2C_DRIVER_NAME ; 
 int /*<<< orphan*/  MICROREAD_I2C_FRAME_HEADROOM ; 
 int /*<<< orphan*/  MICROREAD_I2C_FRAME_TAILROOM ; 
 int /*<<< orphan*/  MICROREAD_I2C_LLC_MAX_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct i2c_client*) ; 
 struct microread_i2c_phy* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct microread_i2c_phy*) ; 
 int /*<<< orphan*/  i2c_phy_ops ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct microread_i2c_phy*) ; 
 int /*<<< orphan*/  microread_i2c_irq_thread_fn ; 
 int FUNC4 (struct microread_i2c_phy*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct microread_i2c_phy*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			       const struct i2c_device_id *id)
{
	struct microread_i2c_phy *phy;
	int r;

	FUNC0(&client->dev, "client %p\n", client);

	phy = FUNC1(&client->dev, sizeof(struct microread_i2c_phy),
			   GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	FUNC3(client, phy);
	phy->i2c_dev = client;

	r = FUNC7(client->irq, NULL, microread_i2c_irq_thread_fn,
				 IRQF_TRIGGER_RISING | IRQF_ONESHOT,
				 MICROREAD_I2C_DRIVER_NAME, phy);
	if (r) {
		FUNC5(&client->dev, "Unable to register IRQ handler\n");
		return r;
	}

	r = FUNC4(phy, &i2c_phy_ops, LLC_SHDLC_NAME,
			    MICROREAD_I2C_FRAME_HEADROOM,
			    MICROREAD_I2C_FRAME_TAILROOM,
			    MICROREAD_I2C_LLC_MAX_PAYLOAD, &phy->hdev);
	if (r < 0)
		goto err_irq;

	FUNC6(&client->dev, "Probed\n");

	return 0;

err_irq:
	FUNC2(client->irq, phy);

	return r;
}