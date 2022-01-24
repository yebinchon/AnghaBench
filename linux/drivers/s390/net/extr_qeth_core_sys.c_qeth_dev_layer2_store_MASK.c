#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ layer_enforced; } ;
struct TYPE_4__ {int layer; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  discipline_mutex; int /*<<< orphan*/  gdev; TYPE_3__* discipline; struct net_device* dev; TYPE_2__ info; TYPE_1__ options; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_6__ {int (* setup ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* remove ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int QETH_DISCIPLINE_LAYER2 ; 
 int QETH_DISCIPLINE_LAYER3 ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int FUNC6 (struct qeth_card*,int) ; 
 int FUNC7 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	struct net_device *ndev;
	char *tmp;
	int i, rc = 0;
	enum qeth_discipline_id newdis;

	if (!card)
		return -EINVAL;

	FUNC2(&card->discipline_mutex);
	if (card->state != CARD_STATE_DOWN) {
		rc = -EPERM;
		goto out;
	}

	i = FUNC7(buf, &tmp, 16);
	switch (i) {
	case 0:
		newdis = QETH_DISCIPLINE_LAYER3;
		break;
	case 1:
		newdis = QETH_DISCIPLINE_LAYER2;
		break;
	default:
		rc = -EINVAL;
		goto out;
	}

	if (card->options.layer == newdis)
		goto out;
	if (card->info.layer_enforced) {
		/* fixed layer, can't switch */
		rc = -EOPNOTSUPP;
		goto out;
	}

	if (card->discipline) {
		/* start with a new, pristine netdevice: */
		ndev = FUNC4(card->dev);
		if (!ndev) {
			rc = -ENOMEM;
			goto out;
		}

		card->discipline->remove(card->gdev);
		FUNC5(card);
		FUNC1(card->dev);
		card->dev = ndev;
	}

	rc = FUNC6(card, newdis);
	if (rc)
		goto out;

	rc = card->discipline->setup(card->gdev);
	if (rc)
		FUNC5(card);
out:
	FUNC3(&card->discipline_mutex);
	return rc ? rc : count;
}