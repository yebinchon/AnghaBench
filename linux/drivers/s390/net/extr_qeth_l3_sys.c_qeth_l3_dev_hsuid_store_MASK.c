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
struct TYPE_4__ {scalar_t__ cq; char* hsuid; scalar_t__ sniffer; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ options; TYPE_1__* dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ CARD_STATE_DOWN ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  QETH_CQ_DISABLED ; 
 int /*<<< orphan*/  QETH_CQ_ENABLED ; 
 scalar_t__ QETH_CQ_NOTAVAILABLE ; 
 struct qeth_card* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC2(dev);
	char *tmp;
	int rc;

	if (!card)
		return -EINVAL;

	if (!FUNC1(card))
		return -EPERM;
	if (card->state != CARD_STATE_DOWN)
		return -EPERM;
	if (card->options.sniffer)
		return -EPERM;
	if (card->options.cq == QETH_CQ_NOTAVAILABLE)
		return -EPERM;

	tmp = FUNC8((char **)&buf, "\n");
	if (FUNC7(tmp) > 8)
		return -EINVAL;

	if (card->options.hsuid[0])
		/* delete old ip address */
		FUNC5(card, false);

	if (FUNC7(tmp) == 0) {
		/* delete ip address only */
		card->options.hsuid[0] = '\0';
		FUNC3(card->dev->perm_addr, card->options.hsuid, 9);
		FUNC4(card, QETH_CQ_DISABLED);
		return count;
	}

	if (FUNC4(card, QETH_CQ_ENABLED))
		return -EPERM;

	FUNC6(card->options.hsuid, sizeof(card->options.hsuid),
		 "%-8s", tmp);
	FUNC0(card->options.hsuid, 8);
	FUNC3(card->dev->perm_addr, card->options.hsuid, 9);

	rc = FUNC5(card, true);

	return rc ? rc : count;
}