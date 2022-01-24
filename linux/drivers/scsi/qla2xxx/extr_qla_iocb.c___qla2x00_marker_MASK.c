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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  vp_idx; struct qla_hw_data* hw; } ;
struct scsi_lun {int dummy; } ;
struct req_que {int /*<<< orphan*/  id; } ;
struct qla_qpair {struct req_que* req; } ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
struct mrk_entry_24xx {int /*<<< orphan*/  handle; int /*<<< orphan*/  vp_index; int /*<<< orphan*/  lun; void* nport_handle; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
struct TYPE_2__ {void* lun; int /*<<< orphan*/  target; scalar_t__ modifier; int /*<<< orphan*/  entry_type; } ;
typedef  TYPE_1__ mrk_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MARKER_TYPE ; 
 scalar_t__ MK_SYNC_ALL ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qla_qpair*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct scsi_lun*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*,struct req_que*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct scsi_qla_host *vha, struct qla_qpair *qpair,
    uint16_t loop_id, uint64_t lun, uint8_t type)
{
	mrk_entry_t *mrk;
	struct mrk_entry_24xx *mrk24 = NULL;
	struct req_que *req = qpair->req;
	struct qla_hw_data *ha = vha->hw;
	scsi_qla_host_t *base_vha = FUNC7(ha->pdev);

	mrk = (mrk_entry_t *)FUNC3(qpair, NULL);
	if (mrk == NULL) {
		FUNC8(ql_log_warn, base_vha, 0x3026,
		    "Failed to allocate Marker IOCB.\n");

		return (QLA_FUNCTION_FAILED);
	}

	mrk->entry_type = MARKER_TYPE;
	mrk->modifier = type;
	if (type != MK_SYNC_ALL) {
		if (FUNC0(ha)) {
			mrk24 = (struct mrk_entry_24xx *) mrk;
			mrk24->nport_handle = FUNC4(loop_id);
			FUNC6(lun, (struct scsi_lun *)&mrk24->lun);
			FUNC5(mrk24->lun, sizeof(mrk24->lun));
			mrk24->vp_index = vha->vp_idx;
			mrk24->handle = FUNC1(req->id, mrk24->handle);
		} else {
			FUNC2(ha, mrk->target, loop_id);
			mrk->lun = FUNC4((uint16_t)lun);
		}
	}
	FUNC10();

	FUNC9(vha, req);

	return (QLA_SUCCESS);
}