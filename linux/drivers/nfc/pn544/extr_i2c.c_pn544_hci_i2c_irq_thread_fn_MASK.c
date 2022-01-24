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
struct sk_buff {int dummy; } ;
struct pn544_i2c_phy {int hard_fault; scalar_t__ run_mode; int /*<<< orphan*/  hdev; int /*<<< orphan*/  fw_work; int /*<<< orphan*/  fw_cmd_result; struct i2c_client* i2c_dev; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PN544_FW_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct pn544_i2c_phy*) ; 
 int FUNC4 (struct pn544_i2c_phy*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *phy_id)
{
	struct pn544_i2c_phy *phy = phy_id;
	struct i2c_client *client;
	struct sk_buff *skb = NULL;
	int r;

	if (!phy || irq != phy->i2c_dev->irq) {
		FUNC0(1);
		return IRQ_NONE;
	}

	client = phy->i2c_dev;
	FUNC1(&client->dev, "IRQ\n");

	if (phy->hard_fault != 0)
		return IRQ_HANDLED;

	if (phy->run_mode == PN544_FW_MODE) {
		phy->fw_cmd_result = FUNC3(phy);
		FUNC5(&phy->fw_work);
	} else {
		r = FUNC4(phy, &skb);
		if (r == -EREMOTEIO) {
			phy->hard_fault = r;

			FUNC2(phy->hdev, NULL);

			return IRQ_HANDLED;
		} else if ((r == -ENOMEM) || (r == -EBADMSG)) {
			return IRQ_HANDLED;
		}

		FUNC2(phy->hdev, skb);
	}
	return IRQ_HANDLED;
}