#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {TYPE_2__* discipline; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct mii_ioctl_data {int /*<<< orphan*/  reg_num; int /*<<< orphan*/  phy_id; int /*<<< orphan*/  val_out; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;
struct TYPE_4__ {int (* do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int,char*,int) ; 
#define  SIOCGMIIPHY 132 
#define  SIOCGMIIREG 131 
#define  SIOC_QETH_ADP_SET_SNMP_CONTROL 130 
#define  SIOC_QETH_GET_CARD_TYPE 129 
#define  SIOC_QETH_QUERY_OAT 128 
 struct mii_ioctl_data* FUNC5 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*,struct ifreq*,int) ; 

int FUNC10(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct qeth_card *card = dev->ml_priv;
	struct mii_ioctl_data *mii_data;
	int rc = 0;

	if (!card)
		return -ENODEV;

	switch (cmd) {
	case SIOC_QETH_ADP_SET_SNMP_CONTROL:
		rc = FUNC8(card, rq->ifr_ifru.ifru_data);
		break;
	case SIOC_QETH_GET_CARD_TYPE:
		if ((FUNC0(card) || FUNC1(card) || FUNC2(card)) &&
		    !FUNC3(card))
			return 1;
		return 0;
	case SIOCGMIIPHY:
		mii_data = FUNC5(rq);
		mii_data->phy_id = 0;
		break;
	case SIOCGMIIREG:
		mii_data = FUNC5(rq);
		if (mii_data->phy_id != 0)
			rc = -EINVAL;
		else
			mii_data->val_out = FUNC6(dev,
				mii_data->phy_id, mii_data->reg_num);
		break;
	case SIOC_QETH_QUERY_OAT:
		rc = FUNC7(card, rq->ifr_ifru.ifru_data);
		break;
	default:
		if (card->discipline->do_ioctl)
			rc = card->discipline->do_ioctl(dev, rq, cmd);
		else
			rc = -EOPNOTSUPP;
	}
	if (rc)
		FUNC4(card, 2, "ioce%x", rc);
	return rc;
}