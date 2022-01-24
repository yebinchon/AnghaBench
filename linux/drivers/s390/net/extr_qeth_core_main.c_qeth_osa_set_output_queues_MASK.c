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
struct TYPE_5__ {unsigned int no_out_queues; int /*<<< orphan*/  default_out_queue; int /*<<< orphan*/  state; } ;
struct qeth_card {TYPE_2__ qdio; TYPE_1__* gdev; TYPE_3__* dev; } ;
struct TYPE_6__ {int num_tx_queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QETH_DEFAULT_QUEUE ; 
 scalar_t__ QETH_QDIO_UNINITIALIZED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card, bool single)
{
	unsigned int count = single ? 1 : card->dev->num_tx_queues;
	int rc;

	FUNC4();
	rc = FUNC2(card->dev, count);
	FUNC5();

	if (rc)
		return rc;

	if (card->qdio.no_out_queues == count)
		return 0;

	if (FUNC0(&card->qdio.state) != QETH_QDIO_UNINITIALIZED)
		FUNC3(card);

	if (count == 1)
		FUNC1(&card->gdev->dev, "Priority Queueing not supported\n");

	card->qdio.default_out_queue = single ? 0 : QETH_DEFAULT_QUEUE;
	card->qdio.no_out_queues = count;
	return 0;
}