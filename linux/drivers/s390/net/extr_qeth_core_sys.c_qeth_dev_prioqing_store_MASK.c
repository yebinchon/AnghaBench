#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int no_out_queues; int default_out_queue; void* do_prio_queueing; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; TYPE_1__ qdio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 void* QETH_DEFAULT_QUEUE ; 
 void* QETH_NO_PRIO_QUEUEING ; 
 void* QETH_PRIOQ_DEFAULT ; 
 void* QETH_PRIO_Q_ING_PREC ; 
 void* QETH_PRIO_Q_ING_SKB ; 
 void* QETH_PRIO_Q_ING_TOS ; 
 void* QETH_PRIO_Q_ING_VLAN ; 
 struct qeth_card* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC2(dev);
	int rc = 0;

	if (!card)
		return -EINVAL;

	if (FUNC0(card))
		return -EOPNOTSUPP;

	FUNC3(&card->conf_mutex);
	if (card->state != CARD_STATE_DOWN) {
		rc = -EPERM;
		goto out;
	}

	/* check if 1920 devices are supported ,
	 * if though we have to permit priority queueing
	 */
	if (card->qdio.no_out_queues == 1) {
		card->qdio.do_prio_queueing = QETH_PRIOQ_DEFAULT;
		rc = -EPERM;
		goto out;
	}

	if (FUNC5(buf, "prio_queueing_prec")) {
		card->qdio.do_prio_queueing = QETH_PRIO_Q_ING_PREC;
		card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
	} else if (FUNC5(buf, "prio_queueing_skb")) {
		card->qdio.do_prio_queueing = QETH_PRIO_Q_ING_SKB;
		card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
	} else if (FUNC5(buf, "prio_queueing_tos")) {
		card->qdio.do_prio_queueing = QETH_PRIO_Q_ING_TOS;
		card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
	} else if (FUNC5(buf, "prio_queueing_vlan")) {
		if (FUNC1(card)) {
			rc = -ENOTSUPP;
			goto out;
		}
		card->qdio.do_prio_queueing = QETH_PRIO_Q_ING_VLAN;
		card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
	} else if (FUNC5(buf, "no_prio_queueing:0")) {
		card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
		card->qdio.default_out_queue = 0;
	} else if (FUNC5(buf, "no_prio_queueing:1")) {
		card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
		card->qdio.default_out_queue = 1;
	} else if (FUNC5(buf, "no_prio_queueing:2")) {
		card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
		card->qdio.default_out_queue = 2;
	} else if (FUNC5(buf, "no_prio_queueing:3")) {
		card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
		card->qdio.default_out_queue = 3;
	} else if (FUNC5(buf, "no_prio_queueing")) {
		card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
		card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
	} else
		rc = -EINVAL;
out:
	FUNC4(&card->conf_mutex);
	return rc ? rc : count;
}