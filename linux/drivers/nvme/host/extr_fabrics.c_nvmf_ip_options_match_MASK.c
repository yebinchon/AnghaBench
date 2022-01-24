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
struct nvmf_ctrl_options {int mask; int /*<<< orphan*/  host_traddr; int /*<<< orphan*/  trsvcid; int /*<<< orphan*/  traddr; } ;
struct nvme_ctrl {TYPE_1__* opts; } ;
struct TYPE_2__ {int mask; int /*<<< orphan*/  host_traddr; int /*<<< orphan*/  trsvcid; int /*<<< orphan*/  traddr; } ;

/* Variables and functions */
 int NVMF_OPT_HOST_TRADDR ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_ctrl*,struct nvmf_ctrl_options*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(struct nvme_ctrl *ctrl,
		struct nvmf_ctrl_options *opts)
{
	if (!FUNC0(ctrl, opts) ||
	    FUNC1(opts->traddr, ctrl->opts->traddr) ||
	    FUNC1(opts->trsvcid, ctrl->opts->trsvcid))
		return false;

	/*
	 * Checking the local address is rough. In most cases, none is specified
	 * and the host port is selected by the stack.
	 *
	 * Assume no match if:
	 * -  local address is specified and address is not the same
	 * -  local address is not specified but remote is, or vice versa
	 *    (admin using specific host_traddr when it matters).
	 */
	if ((opts->mask & NVMF_OPT_HOST_TRADDR) &&
	    (ctrl->opts->mask & NVMF_OPT_HOST_TRADDR)) {
		if (FUNC1(opts->host_traddr, ctrl->opts->host_traddr))
			return false;
	} else if ((opts->mask & NVMF_OPT_HOST_TRADDR) ||
		   (ctrl->opts->mask & NVMF_OPT_HOST_TRADDR)) {
		return false;
	}

	return true;
}