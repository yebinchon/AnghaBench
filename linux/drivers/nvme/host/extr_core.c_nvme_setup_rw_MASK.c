#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct request {int cmd_flags; } ;
struct nvme_ns {int lba_shift; int pi_type; scalar_t__ ms; TYPE_1__* head; struct nvme_ctrl* ctrl; } ;
struct nvme_ctrl {scalar_t__ nr_streams; } ;
struct TYPE_4__ {void* dsmgmt; void* control; void* reftag; void* length; int /*<<< orphan*/  slba; void* nsid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_2__ rw; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_3__ {int /*<<< orphan*/  ns_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_NOTSUPP ; 
#define  NVME_NS_DPS_PI_TYPE1 130 
#define  NVME_NS_DPS_PI_TYPE2 129 
#define  NVME_NS_DPS_PI_TYPE3 128 
 int /*<<< orphan*/  NVME_RW_DSM_FREQ_PREFETCH ; 
 int NVME_RW_FUA ; 
 int NVME_RW_LR ; 
 int NVME_RW_PRINFO_PRACT ; 
 int NVME_RW_PRINFO_PRCHK_GUARD ; 
 int NVME_RW_PRINFO_PRCHK_REF ; 
 int REQ_FAILFAST_DEV ; 
 int REQ_FUA ; 
 scalar_t__ REQ_OP_WRITE ; 
 int REQ_RAHEAD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_ctrl*,struct request*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_ns*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_cmd_read ; 
 int /*<<< orphan*/  nvme_cmd_write ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_ns*) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 scalar_t__ FUNC11 (struct request*) ; 
 int /*<<< orphan*/  FUNC12 (struct request*) ; 

__attribute__((used)) static inline blk_status_t FUNC13(struct nvme_ns *ns,
		struct request *req, struct nvme_command *cmnd)
{
	struct nvme_ctrl *ctrl = ns->ctrl;
	u16 control = 0;
	u32 dsmgmt = 0;

	if (req->cmd_flags & REQ_FUA)
		control |= NVME_RW_FUA;
	if (req->cmd_flags & (REQ_FAILFAST_DEV | REQ_RAHEAD))
		control |= NVME_RW_LR;

	if (req->cmd_flags & REQ_RAHEAD)
		dsmgmt |= NVME_RW_DSM_FREQ_PREFETCH;

	cmnd->rw.opcode = (FUNC11(req) ? nvme_cmd_write : nvme_cmd_read);
	cmnd->rw.nsid = FUNC5(ns->head->ns_id);
	cmnd->rw.slba = FUNC6(FUNC8(ns, FUNC3(req)));
	cmnd->rw.length = FUNC4((FUNC2(req) >> ns->lba_shift) - 1);

	if (FUNC10(req) == REQ_OP_WRITE && ctrl->nr_streams)
		FUNC7(ctrl, req, &control, &dsmgmt);

	if (ns->ms) {
		/*
		 * If formated with metadata, the block layer always provides a
		 * metadata buffer if CONFIG_BLK_DEV_INTEGRITY is enabled.  Else
		 * we enable the PRACT bit for protection information or set the
		 * namespace capacity to zero to prevent any I/O.
		 */
		if (!FUNC1(req)) {
			if (FUNC0(!FUNC9(ns)))
				return BLK_STS_NOTSUPP;
			control |= NVME_RW_PRINFO_PRACT;
		}

		switch (ns->pi_type) {
		case NVME_NS_DPS_PI_TYPE3:
			control |= NVME_RW_PRINFO_PRCHK_GUARD;
			break;
		case NVME_NS_DPS_PI_TYPE1:
		case NVME_NS_DPS_PI_TYPE2:
			control |= NVME_RW_PRINFO_PRCHK_GUARD |
					NVME_RW_PRINFO_PRCHK_REF;
			cmnd->rw.reftag = FUNC5(FUNC12(req));
			break;
		}
	}

	cmnd->rw.control = FUNC4(control);
	cmnd->rw.dsmgmt = FUNC5(dsmgmt);
	return 0;
}