#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct scsi_cmnd {int result; int* cmnd; unsigned char* host_scribble; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_13__* request; TYPE_10__* device; } ;
struct lpfc_vport {int /*<<< orphan*/  fc_myDID; struct lpfc_hba* phba; } ;
struct TYPE_20__ {int /*<<< orphan*/  control_requests; int /*<<< orphan*/  input_requests; int /*<<< orphan*/  output_requests; } ;
struct lpfc_sli4_hdw_queue {TYPE_4__ scsi_cstat; int /*<<< orphan*/ * cpucheck_xmt_io; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_24__ {int /*<<< orphan*/ * wwn; } ;
struct TYPE_25__ {TYPE_8__ u; } ;
struct TYPE_22__ {int /*<<< orphan*/ * wwn; } ;
struct TYPE_23__ {TYPE_6__ u; } ;
struct lpfc_nodelist {scalar_t__ cmd_qdepth; int /*<<< orphan*/  nlp_DID; TYPE_9__ nlp_portname; TYPE_7__ nlp_nodename; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  nlp_sid; } ;
struct TYPE_17__ {int /*<<< orphan*/  ulpTimeout; int /*<<< orphan*/  ulpIoTag; int /*<<< orphan*/  ulpContext; } ;
struct TYPE_15__ {int sli4_xritag; TYPE_1__ iocb; } ;
struct lpfc_io_buf {size_t hdwq_no; TYPE_3__* fcp_cmnd; TYPE_11__ cur_iocbq; struct lpfc_nodelist* ndlp; struct lpfc_rport_data* rdata; struct scsi_cmnd* pCmd; } ;
struct TYPE_21__ {struct lpfc_sli4_hdw_queue* hdwq; } ;
struct TYPE_18__ {int /*<<< orphan*/ * sli3_ring; } ;
struct lpfc_hba {int sli3_options; int cpucheck_on; scalar_t__ sli_rev; int cfg_poll; TYPE_5__ sli4_hba; scalar_t__ cfg_xri_rebalancing; TYPE_2__ sli; scalar_t__ cfg_enable_bg; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_19__ {int fcpCntl3; } ;
struct TYPE_16__ {int timeout; } ;
struct TYPE_14__ {int id; int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int DISABLE_FCP_RING_INT ; 
 int ENABLE_FCP_RING_POLLING ; 
 int /*<<< orphan*/  HA_R0RE_REQ ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_BG ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  LOG_FCP_ERROR ; 
 int /*<<< orphan*/  LOG_SCSI_CMD ; 
 int LPFC_CHECK_CPU_CNT ; 
 int LPFC_CHECK_SCSI_IO ; 
 size_t LPFC_FCP_RING ; 
 int LPFC_SLI3_BG_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
#define  READ_DATA 129 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int SCSI_MLQUEUE_TARGET_BUSY ; 
 size_t SCSI_PROT_NORMAL ; 
 int /*<<< orphan*/  SLI_IOCB_RET_IOCB ; 
#define  WRITE_DATA 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*) ; 
 int /*<<< orphan*/ * dif_op_str ; 
 int FUNC3 (struct fc_rport*) ; 
 int FUNC4 (struct lpfc_hba*,struct lpfc_io_buf*) ; 
 struct lpfc_io_buf* FUNC5 (struct lpfc_hba*,struct lpfc_nodelist*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,size_t) ; 
 scalar_t__ FUNC7 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*,struct lpfc_io_buf*) ; 
 struct lpfc_rport_data* FUNC13 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_vport*,struct lpfc_io_buf*,struct lpfc_nodelist*) ; 
 int FUNC15 (struct lpfc_hba*,struct lpfc_io_buf*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*,struct lpfc_io_buf*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct lpfc_hba*,size_t,TYPE_11__*,int /*<<< orphan*/ ) ; 
 int FUNC19 () ; 
 scalar_t__ FUNC20 (struct scsi_cmnd*) ; 
 size_t FUNC21 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_10__*) ; 
 struct fc_rport* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static int
FUNC26(struct Scsi_Host *shost, struct scsi_cmnd *cmnd)
{
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_rport_data *rdata;
	struct lpfc_nodelist *ndlp;
	struct lpfc_io_buf *lpfc_cmd;
	struct fc_rport *rport = FUNC23(FUNC22(cmnd->device));
	int err, idx;
#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	int cpu;
#endif

	rdata = FUNC13(cmnd->device);

	/* sanity check on references */
	if (FUNC25(!rdata) || FUNC25(!rport))
		goto out_fail_command;

	err = FUNC3(rport);
	if (err) {
		cmnd->result = err;
		goto out_fail_command;
	}
	ndlp = rdata->pnode;

	if ((FUNC21(cmnd) != SCSI_PROT_NORMAL) &&
		(!(phba->sli3_options & LPFC_SLI3_BG_ENABLED))) {

		FUNC9(phba, KERN_ERR, LOG_BG,
				"9058 BLKGRD: ERROR: rcvd protected cmd:%02x"
				" op:%02x str=%s without registering for"
				" BlockGuard - Rejecting command\n",
				cmnd->cmnd[0], FUNC21(cmnd),
				dif_op_str[FUNC21(cmnd)]);
		goto out_fail_command;
	}

	/*
	 * Catch race where our node has transitioned, but the
	 * transport is still transitioning.
	 */
	if (!ndlp || !FUNC0(ndlp))
		goto out_tgt_busy;
	if (FUNC7(phba, ndlp)) {
		if (FUNC1(&ndlp->cmd_pending) >= ndlp->cmd_qdepth) {
			FUNC10(vport, KERN_INFO, LOG_FCP_ERROR,
					 "3377 Target Queue Full, scsi Id:%d "
					 "Qdepth:%d Pending command:%d"
					 " WWNN:%02x:%02x:%02x:%02x:"
					 "%02x:%02x:%02x:%02x, "
					 " WWPN:%02x:%02x:%02x:%02x:"
					 "%02x:%02x:%02x:%02x",
					 ndlp->nlp_sid, ndlp->cmd_qdepth,
					 FUNC1(&ndlp->cmd_pending),
					 ndlp->nlp_nodename.u.wwn[0],
					 ndlp->nlp_nodename.u.wwn[1],
					 ndlp->nlp_nodename.u.wwn[2],
					 ndlp->nlp_nodename.u.wwn[3],
					 ndlp->nlp_nodename.u.wwn[4],
					 ndlp->nlp_nodename.u.wwn[5],
					 ndlp->nlp_nodename.u.wwn[6],
					 ndlp->nlp_nodename.u.wwn[7],
					 ndlp->nlp_portname.u.wwn[0],
					 ndlp->nlp_portname.u.wwn[1],
					 ndlp->nlp_portname.u.wwn[2],
					 ndlp->nlp_portname.u.wwn[3],
					 ndlp->nlp_portname.u.wwn[4],
					 ndlp->nlp_portname.u.wwn[5],
					 ndlp->nlp_portname.u.wwn[6],
					 ndlp->nlp_portname.u.wwn[7]);
			goto out_tgt_busy;
		}
	}

	lpfc_cmd = FUNC5(phba, ndlp, cmnd);
	if (lpfc_cmd == NULL) {
		FUNC11(phba);

		FUNC10(vport, KERN_INFO, LOG_FCP_ERROR,
				 "0707 driver's buffer pool is empty, "
				 "IO busied\n");
		goto out_host_busy;
	}

	/*
	 * Store the midlayer's command structure for the completion phase
	 * and complete the command initialization.
	 */
	lpfc_cmd->pCmd  = cmnd;
	lpfc_cmd->rdata = rdata;
	lpfc_cmd->ndlp = ndlp;
	cmnd->host_scribble = (unsigned char *)lpfc_cmd;

	if (FUNC21(cmnd) != SCSI_PROT_NORMAL) {
		if (vport->phba->cfg_enable_bg) {
			FUNC10(vport,
					 KERN_INFO, LOG_SCSI_CMD,
					 "9033 BLKGRD: rcvd %s cmd:x%x "
					 "sector x%llx cnt %u pt %x\n",
					 dif_op_str[FUNC21(cmnd)],
					 cmnd->cmnd[0],
					 (unsigned long long)FUNC20(cmnd),
					 FUNC2(cmnd->request),
					 (cmnd->cmnd[1]>>5));
		}
		err = FUNC4(phba, lpfc_cmd);
	} else {
		if (vport->phba->cfg_enable_bg) {
			FUNC10(vport,
					 KERN_INFO, LOG_SCSI_CMD,
					 "9038 BLKGRD: rcvd PROT_NORMAL cmd: "
					 "x%x sector x%llx cnt %u pt %x\n",
					 cmnd->cmnd[0],
					 (unsigned long long)FUNC20(cmnd),
					 FUNC2(cmnd->request),
					 (cmnd->cmnd[1]>>5));
		}
		err = FUNC15(phba, lpfc_cmd);
	}

	if (err == 2) {
		cmnd->result = DID_ERROR << 16;
		goto out_fail_command_release_buf;
	} else if (err) {
		goto out_host_busy_free_buf;
	}

	FUNC14(vport, lpfc_cmd, ndlp);

#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	if (phba->cpucheck_on & LPFC_CHECK_SCSI_IO) {
		cpu = raw_smp_processor_id();
		if (cpu < LPFC_CHECK_CPU_CNT) {
			struct lpfc_sli4_hdw_queue *hdwq =
					&phba->sli4_hba.hdwq[lpfc_cmd->hdwq_no];
			hdwq->cpucheck_xmt_io[cpu]++;
		}
	}
#endif
	err = FUNC18(phba, LPFC_FCP_RING,
				  &lpfc_cmd->cur_iocbq, SLI_IOCB_RET_IOCB);
	if (err) {
		FUNC10(vport, KERN_INFO, LOG_FCP,
				 "3376 FCP could not issue IOCB err %x"
				 "FCP cmd x%x <%d/%llu> "
				 "sid: x%x did: x%x oxid: x%x "
				 "Data: x%x x%x x%x x%x\n",
				 err, cmnd->cmnd[0],
				 cmnd->device ? cmnd->device->id : 0xffff,
				 cmnd->device ? cmnd->device->lun : (u64) -1,
				 vport->fc_myDID, ndlp->nlp_DID,
				 phba->sli_rev == LPFC_SLI_REV4 ?
				 lpfc_cmd->cur_iocbq.sli4_xritag : 0xffff,
				 lpfc_cmd->cur_iocbq.iocb.ulpContext,
				 lpfc_cmd->cur_iocbq.iocb.ulpIoTag,
				 lpfc_cmd->cur_iocbq.iocb.ulpTimeout,
				 (uint32_t)
				 (cmnd->request->timeout / 1000));

		goto out_host_busy_free_buf;
	}
	if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
		FUNC17(phba,
			&phba->sli.sli3_ring[LPFC_FCP_RING], HA_R0RE_REQ);

		if (phba->cfg_poll & DISABLE_FCP_RING_INT)
			FUNC8(phba);
	}

	if (phba->cfg_xri_rebalancing)
		FUNC6(phba, lpfc_cmd->hdwq_no);

	return 0;

 out_host_busy_free_buf:
	idx = lpfc_cmd->hdwq_no;
	FUNC16(phba, lpfc_cmd);
	if (phba->sli4_hba.hdwq) {
		switch (lpfc_cmd->fcp_cmnd->fcpCntl3) {
		case WRITE_DATA:
			phba->sli4_hba.hdwq[idx].scsi_cstat.output_requests--;
			break;
		case READ_DATA:
			phba->sli4_hba.hdwq[idx].scsi_cstat.input_requests--;
			break;
		default:
			phba->sli4_hba.hdwq[idx].scsi_cstat.control_requests--;
		}
	}
	FUNC12(phba, lpfc_cmd);
 out_host_busy:
	return SCSI_MLQUEUE_HOST_BUSY;

 out_tgt_busy:
	return SCSI_MLQUEUE_TARGET_BUSY;

 out_fail_command_release_buf:
	FUNC12(phba, lpfc_cmd);

 out_fail_command:
	cmnd->scsi_done(cmnd);
	return 0;
}