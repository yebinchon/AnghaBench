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
struct nxp_nci_info {int mode; int /*<<< orphan*/  info_lock; } ;
struct nxp_nci_i2c_phy {int hard_fault; int /*<<< orphan*/  ndev; struct i2c_client* i2c_dev; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
#define  NXP_NCI_MODE_COLD 130 
#define  NXP_NCI_MODE_FW 129 
#define  NXP_NCI_MODE_NCI 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nxp_nci_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC7 (struct nxp_nci_i2c_phy*,struct sk_buff**) ; 
 int FUNC8 (struct nxp_nci_i2c_phy*,struct sk_buff**) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *phy_id)
{
	struct nxp_nci_i2c_phy *phy = phy_id;
	struct i2c_client *client;
	struct nxp_nci_info *info;

	struct sk_buff *skb = NULL;
	int r = 0;

	if (!phy || !phy->ndev)
		goto exit_irq_none;

	client = phy->i2c_dev;

	if (!client || irq != client->irq)
		goto exit_irq_none;

	info = FUNC3(phy->ndev);

	if (!info)
		goto exit_irq_none;

	FUNC1(&info->info_lock);

	if (phy->hard_fault != 0)
		goto exit_irq_handled;

	switch (info->mode) {
	case NXP_NCI_MODE_NCI:
		r = FUNC8(phy, &skb);
		break;
	case NXP_NCI_MODE_FW:
		r = FUNC7(phy, &skb);
		break;
	case NXP_NCI_MODE_COLD:
		r = -EREMOTEIO;
		break;
	}

	if (r == -EREMOTEIO) {
		phy->hard_fault = r;
		skb = NULL;
	} else if (r < 0) {
		FUNC5(&client->dev, "Read failed with error %d\n", r);
		goto exit_irq_handled;
	}

	switch (info->mode) {
	case NXP_NCI_MODE_NCI:
		FUNC4(phy->ndev, skb);
		break;
	case NXP_NCI_MODE_FW:
		FUNC6(phy->ndev, skb);
		break;
	case NXP_NCI_MODE_COLD:
		break;
	}

exit_irq_handled:
	FUNC2(&info->info_lock);
	return IRQ_HANDLED;
exit_irq_none:
	FUNC0(1);
	return IRQ_NONE;
}