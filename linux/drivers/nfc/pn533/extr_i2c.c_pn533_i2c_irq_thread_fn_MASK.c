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
struct pn533_i2c_phy {int hard_fault; int /*<<< orphan*/  priv; int /*<<< orphan*/  aborted; struct i2c_client* i2c_dev; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EBADMSG ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct pn533_i2c_phy*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct pn533_i2c_phy *phy = data;
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

	r = FUNC2(phy, &skb);
	if (r == -EREMOTEIO) {
		phy->hard_fault = r;

		FUNC3(phy->priv, NULL, -EREMOTEIO);

		return IRQ_HANDLED;
	} else if ((r == -ENOMEM) || (r == -EBADMSG) || (r == -EBUSY)) {
		return IRQ_HANDLED;
	}

	if (!phy->aborted)
		FUNC3(phy->priv, skb, 0);

	return IRQ_HANDLED;
}