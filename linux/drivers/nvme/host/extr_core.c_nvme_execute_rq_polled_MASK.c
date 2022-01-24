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
struct request_queue {int /*<<< orphan*/  queue_flags; } ;
struct request {int /*<<< orphan*/  mq_hctx; int /*<<< orphan*/ * end_io_data; int /*<<< orphan*/  cmd_flags; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUEUE_FLAG_POLL ; 
 int /*<<< orphan*/  REQ_HIPRI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct gendisk*,struct request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  nvme_end_sync_rq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC8(struct request_queue *q,
		struct gendisk *bd_disk, struct request *rq, int at_head)
{
	FUNC0(wait);

	FUNC1(!FUNC7(QUEUE_FLAG_POLL, &q->queue_flags));

	rq->cmd_flags |= REQ_HIPRI;
	rq->end_io_data = &wait;
	FUNC2(q, bd_disk, rq, at_head, nvme_end_sync_rq);

	while (!FUNC4(&wait)) {
		FUNC3(q, FUNC6(rq->mq_hctx, rq), true);
		FUNC5();
	}
}