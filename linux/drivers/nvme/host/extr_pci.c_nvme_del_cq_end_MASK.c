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
struct request {struct nvme_queue* end_io_data; } ;
struct nvme_queue {int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEQ_DELETE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct request *req, blk_status_t error)
{
	struct nvme_queue *nvmeq = req->end_io_data;

	if (error)
		FUNC1(NVMEQ_DELETE_ERROR, &nvmeq->flags);

	FUNC0(req, error);
}