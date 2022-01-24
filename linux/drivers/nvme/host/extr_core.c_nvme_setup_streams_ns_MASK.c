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
struct streams_directive_params {int /*<<< orphan*/  sgs; int /*<<< orphan*/  sws; } ;
struct nvme_ns {unsigned int sws; int sgs; int lba_shift; int /*<<< orphan*/  queue; TYPE_1__* head; } ;
struct nvme_ctrl {int /*<<< orphan*/  nr_streams; } ;
struct TYPE_2__ {int /*<<< orphan*/  ns_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvme_ctrl*,struct streams_directive_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
{
	struct streams_directive_params s;
	int ret;

	if (!ctrl->nr_streams)
		return 0;

	ret = FUNC4(ctrl, &s, ns->head->ns_id);
	if (ret)
		return ret;

	ns->sws = FUNC3(s.sws);
	ns->sgs = FUNC2(s.sgs);

	if (ns->sws) {
		unsigned int bs = 1 << ns->lba_shift;

		FUNC0(ns->queue, bs * ns->sws);
		if (ns->sgs)
			FUNC1(ns->queue, bs * ns->sws * ns->sgs);
	}

	return 0;
}