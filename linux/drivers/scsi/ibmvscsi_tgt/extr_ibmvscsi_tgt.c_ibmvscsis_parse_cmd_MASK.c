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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_10__ {int* scsi_lun; } ;
struct srp_cmd {int add_cdb_len; int tag; int task_attr; TYPE_5__ lun; int /*<<< orphan*/  cdb; int /*<<< orphan*/  sol_not; } ;
struct TYPE_7__ {struct ibmvscsis_nexus* ibmv_nexus; } ;
struct scsi_info {int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  active_q; TYPE_2__ tport; } ;
struct iu_entry {TYPE_1__* sbuf; } ;
struct ibmvscsis_nexus {int /*<<< orphan*/  se_sess; } ;
struct TYPE_9__ {int /*<<< orphan*/  tag; } ;
struct TYPE_8__ {int /*<<< orphan*/  sol_not; } ;
struct ibmvscsis_cmd {int /*<<< orphan*/  list; int /*<<< orphan*/  sense_buf; TYPE_4__ se_cmd; TYPE_3__ rsp; struct iu_entry* iue; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_6__ {scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DISCONNECT_RECONNECT ; 
#define  SRP_ACA_TASK 131 
#define  SRP_HEAD_TASK 130 
#define  SRP_ORDERED_TASK 129 
#define  SRP_SIMPLE_TASK 128 
 int TCM_ACA_TAG ; 
 int TCM_HEAD_TAG ; 
 int TCM_ORDERED_TAG ; 
 int TCM_SIMPLE_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_info*,struct ibmvscsis_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct srp_cmd*,int*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct scsi_info *vscsi,
				struct ibmvscsis_cmd *cmd)
{
	struct iu_entry *iue = cmd->iue;
	struct srp_cmd *srp = (struct srp_cmd *)iue->sbuf->buf;
	struct ibmvscsis_nexus *nexus;
	u64 data_len = 0;
	enum dma_data_direction dir;
	int attr = 0;
	int rc = 0;

	nexus = vscsi->tport.ibmv_nexus;
	/*
	 * additional length in bytes.  Note that the SRP spec says that
	 * additional length is in 4-byte words, but technically the
	 * additional length field is only the upper 6 bits of the byte.
	 * The lower 2 bits are reserved.  If the lower 2 bits are 0 (as
	 * all reserved fields should be), then interpreting the byte as
	 * an int will yield the length in bytes.
	 */
	if (srp->add_cdb_len & 0x03) {
		FUNC1(&vscsi->dev, "parse_cmd: reserved bits set in IU\n");
		FUNC7(&vscsi->intr_lock);
		FUNC3(vscsi, ERR_DISCONNECT_RECONNECT, 0);
		FUNC2(vscsi, cmd);
		FUNC8(&vscsi->intr_lock);
		return;
	}

	if (FUNC9(srp, &dir, &data_len)) {
		FUNC1(&vscsi->dev, "0x%llx: parsing SRP descriptor table failed.\n",
			srp->tag);
		goto fail;
	}

	cmd->rsp.sol_not = srp->sol_not;

	switch (srp->task_attr) {
	case SRP_SIMPLE_TASK:
		attr = TCM_SIMPLE_TAG;
		break;
	case SRP_ORDERED_TASK:
		attr = TCM_ORDERED_TAG;
		break;
	case SRP_HEAD_TASK:
		attr = TCM_HEAD_TAG;
		break;
	case SRP_ACA_TASK:
		attr = TCM_ACA_TAG;
		break;
	default:
		FUNC1(&vscsi->dev, "Invalid task attribute %d\n",
			srp->task_attr);
		goto fail;
	}

	cmd->se_cmd.tag = FUNC0(srp->tag);

	FUNC7(&vscsi->intr_lock);
	FUNC4(&cmd->list, &vscsi->active_q);
	FUNC8(&vscsi->intr_lock);

	srp->lun.scsi_lun[0] &= 0x3f;

	rc = FUNC10(&cmd->se_cmd, nexus->se_sess, srp->cdb,
			       cmd->sense_buf, FUNC6(&srp->lun),
			       data_len, attr, dir, 0);
	if (rc) {
		FUNC1(&vscsi->dev, "target_submit_cmd failed, rc %d\n", rc);
		FUNC7(&vscsi->intr_lock);
		FUNC5(&cmd->list);
		FUNC2(vscsi, cmd);
		FUNC8(&vscsi->intr_lock);
		goto fail;
	}
	return;

fail:
	FUNC7(&vscsi->intr_lock);
	FUNC3(vscsi, ERR_DISCONNECT_RECONNECT, 0);
	FUNC8(&vscsi->intr_lock);
}