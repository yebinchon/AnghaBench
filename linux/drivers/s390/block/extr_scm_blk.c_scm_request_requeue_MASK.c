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
struct scm_request {scalar_t__* request; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int /*<<< orphan*/  rq; int /*<<< orphan*/  queued_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int nr_requests_per_io ; 
 int /*<<< orphan*/  FUNC3 (struct scm_request*) ; 

__attribute__((used)) static void FUNC4(struct scm_request *scmrq)
{
	struct scm_blk_dev *bdev = scmrq->bdev;
	int i;

	for (i = 0; i < nr_requests_per_io && scmrq->request[i]; i++)
		FUNC2(scmrq->request[i], false);

	FUNC0(&bdev->queued_reqs);
	FUNC3(scmrq);
	FUNC1(bdev->rq);
}