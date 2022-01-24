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
struct scm_request {int /*<<< orphan*/  aob; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int /*<<< orphan*/  queued_reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scm_request*) ; 

__attribute__((used)) static void FUNC4(struct scm_request *scmrq)
{
	struct scm_blk_dev *bdev = scmrq->bdev;

	FUNC1(&bdev->queued_reqs);
	if (FUNC2(scmrq->aob)) {
		FUNC0(5, "no subchannel");
		FUNC3(scmrq);
	}
}