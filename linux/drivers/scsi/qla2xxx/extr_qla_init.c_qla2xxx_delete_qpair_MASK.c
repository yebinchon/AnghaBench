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
struct TYPE_2__ {scalar_t__ qpairs_rsp_created; scalar_t__ qpairs_req_created; scalar_t__ qpairs_available; } ;
struct scsi_qla_host {TYPE_1__ flags; int /*<<< orphan*/  qp_list; } ;
struct qla_qpair {int delete_in_progress; size_t id; int /*<<< orphan*/  srb_mempool; int /*<<< orphan*/  qp_list_elem; int /*<<< orphan*/  rsp; int /*<<< orphan*/  req; int /*<<< orphan*/  ref_count; struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  mq_lock; int /*<<< orphan*/  num_qpairs; int /*<<< orphan*/  qpair_qid_map; int /*<<< orphan*/ ** queue_pair_map; } ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_qpair*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 

int FUNC11(struct scsi_qla_host *vha, struct qla_qpair *qpair)
{
	int ret = QLA_FUNCTION_FAILED;
	struct qla_hw_data *ha = qpair->hw;

	qpair->delete_in_progress = 1;
	while (FUNC0(&qpair->ref_count))
		FUNC6(500);

	ret = FUNC9(vha, qpair->req);
	if (ret != QLA_SUCCESS)
		goto fail;

	ret = FUNC10(vha, qpair->rsp);
	if (ret != QLA_SUCCESS)
		goto fail;

	FUNC7(&ha->mq_lock);
	ha->queue_pair_map[qpair->id] = NULL;
	FUNC1(qpair->id, ha->qpair_qid_map);
	ha->num_qpairs--;
	FUNC3(&qpair->qp_list_elem);
	if (FUNC4(&vha->qp_list)) {
		vha->flags.qpairs_available = 0;
		vha->flags.qpairs_req_created = 0;
		vha->flags.qpairs_rsp_created = 0;
	}
	FUNC5(qpair->srb_mempool);
	FUNC2(qpair);
	FUNC8(&ha->mq_lock);

	return QLA_SUCCESS;
fail:
	return ret;
}