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
struct request {int dummy; } ;
struct blk_mq_tag_set {struct nvme_loop_ctrl* driver_data; } ;
struct nvme_loop_ctrl {struct blk_mq_tag_set tag_set; int /*<<< orphan*/  ctrl; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (struct nvme_loop_ctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC2 (struct request*) ; 

__attribute__((used)) static int FUNC3(struct blk_mq_tag_set *set,
		struct request *req, unsigned int hctx_idx,
		unsigned int numa_node)
{
	struct nvme_loop_ctrl *ctrl = set->driver_data;

	FUNC2(req)->ctrl = &ctrl->ctrl;
	return FUNC1(ctrl, FUNC0(req),
			(set == &ctrl->tag_set) ? hctx_idx + 1 : 0);
}