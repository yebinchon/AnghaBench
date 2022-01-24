#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {TYPE_4__* req; int /*<<< orphan*/  vp_idx; TYPE_3__ vha_tgt; TYPE_2__* host; int /*<<< orphan*/  host_no; } ;
struct qla_tgt {int /*<<< orphan*/  tgt_list_entry; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  tgt_global_resets_count; int /*<<< orphan*/  sess_works_list; int /*<<< orphan*/  sess_work; int /*<<< orphan*/  sess_work_lock; int /*<<< orphan*/  del_sess_list; int /*<<< orphan*/  waitQ; struct scsi_qla_host* vha; struct qla_hw_data* ha; int /*<<< orphan*/  cpuid; int /*<<< orphan*/  hint_elem; struct qla_qpair* qpair; struct qla_tgt* qphints; int /*<<< orphan*/  lun_qpair_map; } ;
struct qla_qpair_hint {int /*<<< orphan*/  tgt_list_entry; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  tgt_global_resets_count; int /*<<< orphan*/  sess_works_list; int /*<<< orphan*/  sess_work; int /*<<< orphan*/  sess_work_lock; int /*<<< orphan*/  del_sess_list; int /*<<< orphan*/  waitQ; struct scsi_qla_host* vha; struct qla_hw_data* ha; int /*<<< orphan*/  cpuid; int /*<<< orphan*/  hint_elem; struct qla_qpair* qpair; struct qla_qpair_hint* qphints; int /*<<< orphan*/  lun_qpair_map; } ;
struct qla_qpair {int /*<<< orphan*/  cpuid; int /*<<< orphan*/  qp_lock_ptr; int /*<<< orphan*/  hints_list; } ;
struct TYPE_12__ {TYPE_5__* tgt_ops; } ;
struct qla_hw_data {int max_qpairs; TYPE_6__ tgt; struct qla_qpair** queue_pair_map; struct qla_qpair* base_qpair; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* add_target ) (struct scsi_qla_host*) ;} ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_8__ {TYPE_1__* hostt; } ;
struct TYPE_7__ {int supported_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int MODE_TARGET ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct qla_tgt* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qla_tgt*) ; 
 struct qla_tgt* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_tgt ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  qla_tgt_glist ; 
 int /*<<< orphan*/  qla_tgt_mutex ; 
 int /*<<< orphan*/  qlt_sess_work_fn ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_qla_host*) ; 

int FUNC21(struct qla_hw_data *ha, struct scsi_qla_host *base_vha)
{
	struct qla_tgt *tgt;
	int rc, i;
	struct qla_qpair_hint *h;

	if (!FUNC5())
		return 0;

	if (!FUNC3(ha)) {
		FUNC16(ql_log_warn, base_vha, 0xe070,
		    "This adapter does not support target mode.\n");
		return 0;
	}

	FUNC15(ql_dbg_tgt, base_vha, 0xe03b,
	    "Registering target for host %ld(%p).\n", base_vha->host_no, ha);

	FUNC0(base_vha->vha_tgt.qla_tgt != NULL);

	tgt = FUNC11(sizeof(struct qla_tgt), GFP_KERNEL);
	if (!tgt) {
		FUNC15(ql_dbg_tgt, base_vha, 0xe066,
		    "Unable to allocate struct qla_tgt\n");
		return -ENOMEM;
	}

	tgt->qphints = FUNC9(ha->max_qpairs + 1,
			       sizeof(struct qla_qpair_hint),
			       GFP_KERNEL);
	if (!tgt->qphints) {
		FUNC10(tgt);
		FUNC16(ql_log_warn, base_vha, 0x0197,
		    "Unable to allocate qpair hints.\n");
		return -ENOMEM;
	}

	if (!(base_vha->host->hostt->supported_mode & MODE_TARGET))
		base_vha->host->hostt->supported_mode |= MODE_TARGET;

	rc = FUNC7(&tgt->lun_qpair_map);
	if (rc) {
		FUNC10(tgt->qphints);
		FUNC10(tgt);
		FUNC16(ql_log_info, base_vha, 0x0198,
			"Unable to initialize lun_qpair_map btree\n");
		return -EIO;
	}
	h = &tgt->qphints[0];
	h->qpair = ha->base_qpair;
	FUNC1(&h->hint_elem);
	h->cpuid = ha->base_qpair->cpuid;
	FUNC12(&h->hint_elem, &ha->base_qpair->hints_list);

	for (i = 0; i < ha->max_qpairs; i++) {
		unsigned long flags;

		struct qla_qpair *qpair = ha->queue_pair_map[i];

		h = &tgt->qphints[i + 1];
		FUNC1(&h->hint_elem);
		if (qpair) {
			h->qpair = qpair;
			FUNC18(qpair->qp_lock_ptr, flags);
			FUNC12(&h->hint_elem, &qpair->hints_list);
			FUNC19(qpair->qp_lock_ptr, flags);
			h->cpuid = qpair->cpuid;
		}
	}

	tgt->ha = ha;
	tgt->vha = base_vha;
	FUNC8(&tgt->waitQ);
	FUNC1(&tgt->del_sess_list);
	FUNC17(&tgt->sess_work_lock);
	FUNC2(&tgt->sess_work, qlt_sess_work_fn);
	FUNC1(&tgt->sess_works_list);
	FUNC6(&tgt->tgt_global_resets_count, 0);

	base_vha->vha_tgt.qla_tgt = tgt;

	FUNC15(ql_dbg_tgt, base_vha, 0xe067,
		"qla_target(%d): using 64 Bit PCI addressing",
		base_vha->vp_idx);
	/* 3 is reserved */
	tgt->sg_tablesize = FUNC4(base_vha->req->length - 3);

	FUNC13(&qla_tgt_mutex);
	FUNC12(&tgt->tgt_list_entry, &qla_tgt_glist);
	FUNC14(&qla_tgt_mutex);

	if (ha->tgt.tgt_ops && ha->tgt.tgt_ops->add_target)
		ha->tgt.tgt_ops->add_target(base_vha);

	return 0;
}