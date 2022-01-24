#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  scan_generation; } ;
struct TYPE_7__ {TYPE_1__ mgt_rsp; } ;
struct esas2r_request {scalar_t__ req_stat; TYPE_5__* vda_rsp_data; TYPE_2__ func_rsp; scalar_t__ interrupt_cx; } ;
struct esas2r_disc_context {int flags; scalar_t__ raid_grp_ix; void* state; int /*<<< orphan*/  part_num; int /*<<< orphan*/  curr_virt_id; int /*<<< orphan*/  scan_gen; } ;
struct esas2r_adapter {int /*<<< orphan*/  mem_lock; } ;
struct atto_vdapart_info {int /*<<< orphan*/  target_id; int /*<<< orphan*/  part_no; } ;
struct TYPE_8__ {struct atto_vdapart_info part_info; } ;
struct TYPE_9__ {TYPE_3__ data; } ;
struct TYPE_10__ {TYPE_4__ mgt_data; } ;

/* Variables and functions */
 int DCF_POLLED ; 
 void* DCS_RAID_GRP_INFO ; 
 int /*<<< orphan*/  ESAS2R_LOG_WARN ; 
 scalar_t__ RS_PART_LAST ; 
 scalar_t__ RS_SCAN_GEN ; 
 scalar_t__ RS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_request*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,struct esas2r_disc_context*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct esas2r_adapter *a,
				     struct esas2r_request *rq)
{
	struct esas2r_disc_context *dc =
		(struct esas2r_disc_context *)rq->interrupt_cx;
	unsigned long flags;
	struct atto_vdapart_info *partinfo;

	FUNC4();

	FUNC7(&a->mem_lock, flags);

	if (rq->req_stat == RS_SCAN_GEN) {
		dc->scan_gen = rq->func_rsp.mgt_rsp.scan_generation;
		dc->raid_grp_ix = 0;
		dc->state = DCS_RAID_GRP_INFO;
	} else if (rq->req_stat == RS_SUCCESS) {
		partinfo = &rq->vda_rsp_data->mgt_data.data.part_info;

		dc->part_num = partinfo->part_no;

		dc->curr_virt_id = FUNC6(partinfo->target_id);

		FUNC3(a, dc);

		dc->part_num++;
	} else {
		if (!(rq->req_stat == RS_PART_LAST)) {
			FUNC1(ESAS2R_LOG_WARN,
				   "A request for RAID group partition info "
				   "failed - status:%d", rq->req_stat);
		}

		dc->state = DCS_RAID_GRP_INFO;
		dc->raid_grp_ix++;
	}

	FUNC2(rq, a);

	/* continue discovery if it's interrupt driven */

	if (!(dc->flags & DCF_POLLED))
		FUNC0(a, rq);

	FUNC8(&a->mem_lock, flags);

	FUNC5();
}