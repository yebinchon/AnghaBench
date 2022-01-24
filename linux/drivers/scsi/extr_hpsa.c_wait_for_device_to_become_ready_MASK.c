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
struct ctlr_info {int nreply_queues; TYPE_1__* pdev; } ;
struct CommandList {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DEFAULT_REPLY_QUEUE ; 
 struct CommandList* FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct ctlr_info*,struct CommandList*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct ctlr_info *h,
					   unsigned char lunaddr[],
					   int reply_queue)
{
	int first_queue;
	int last_queue;
	int rq;
	int rc = 0;
	struct CommandList *c;

	c = FUNC0(h);

	/*
	 * If no specific reply queue was requested, then send the TUR
	 * repeatedly, requesting a reply on each reply queue; otherwise execute
	 * the loop exactly once using only the specified queue.
	 */
	if (reply_queue == DEFAULT_REPLY_QUEUE) {
		first_queue = 0;
		last_queue = h->nreply_queues - 1;
	} else {
		first_queue = reply_queue;
		last_queue = reply_queue;
	}

	for (rq = first_queue; rq <= last_queue; rq++) {
		rc = FUNC3(h, c, lunaddr, rq);
		if (rc)
			break;
	}

	if (rc)
		FUNC2(&h->pdev->dev, "giving up on device.\n");
	else
		FUNC2(&h->pdev->dev, "device is ready.\n");

	FUNC1(h, c);
	return rc;
}