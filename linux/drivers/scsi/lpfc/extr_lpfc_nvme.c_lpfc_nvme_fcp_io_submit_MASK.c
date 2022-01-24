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
typedef  void* uint64_t ;
struct nvmefc_fcp_req {scalar_t__ io_dir; scalar_t__ sg_cnt; scalar_t__ cmdaddr; struct lpfc_nvme_fcpreq_priv* private; } ;
struct nvme_fc_remote_port {int /*<<< orphan*/  port_id; scalar_t__ private; } ;
struct nvme_fc_local_port {scalar_t__ private; } ;
struct nvme_common_command {scalar_t__ opcode; } ;
struct TYPE_7__ {struct nvme_common_command common; } ;
struct nvme_fc_cmd_iu {TYPE_2__ sqe; } ;
struct lpfc_vport {int load_flag; int /*<<< orphan*/  fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nvme_rport {struct lpfc_nodelist* ndlp; } ;
struct lpfc_nvme_qhandle {int index; scalar_t__ qidx; } ;
struct lpfc_nvme_lport {int /*<<< orphan*/  xmt_fcp_wqerr; int /*<<< orphan*/  xmt_fcp_err; int /*<<< orphan*/  xmt_fcp_noxri; int /*<<< orphan*/  xmt_fcp_qdepth; int /*<<< orphan*/  xmt_fcp_bad_ndlp; struct lpfc_vport* vport; } ;
struct lpfc_nvme_fcpreq_priv {struct lpfc_io_buf* nvme_buf; } ;
struct lpfc_nodelist {int nlp_type; int nlp_DID; int /*<<< orphan*/  cmd_qdepth; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  upcall_flags; int /*<<< orphan*/  nlp_state; } ;
struct TYPE_10__ {int /*<<< orphan*/  sli4_xritag; int /*<<< orphan*/  hba_wqidx; } ;
struct lpfc_io_buf {int cpu; struct nvmefc_fcp_req* nvmeCmd; void* ts_cmd_wqput; void* ts_cmd_start; int /*<<< orphan*/  hdwq_no; TYPE_5__ cur_iocbq; int /*<<< orphan*/  hdwq; scalar_t__ qidx; struct lpfc_nodelist* ndlp; int /*<<< orphan*/  ts_last_cmd; } ;
struct TYPE_9__ {TYPE_1__* hdwq; TYPE_3__* cpu_map; } ;
struct lpfc_hba {scalar_t__ cfg_fcp_io_sched; int cpucheck_on; TYPE_4__ sli4_hba; scalar_t__ cfg_xri_rebalancing; int /*<<< orphan*/  ktime_last_cmd; scalar_t__ ktime_on; } ;
struct lpfc_fc4_ctrl_stat {int /*<<< orphan*/  control_requests; int /*<<< orphan*/  input_requests; int /*<<< orphan*/  output_requests; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdwq; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cpucheck_xmt_io; struct lpfc_fc4_ctrl_stat nvme_cstat; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FC_UNLOADING ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int LOG_NODE ; 
 int LOG_NVME_IOERR ; 
 int LPFC_CHECK_CPU_CNT ; 
 int LPFC_CHECK_NVME_IO ; 
 scalar_t__ LPFC_FCP_SCHED_BY_HDWQ ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int NLP_NVME_TARGET ; 
 int /*<<< orphan*/  NLP_STE_MAPPED_NODE ; 
 scalar_t__ NVMEFC_FCP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 () ; 
 struct lpfc_io_buf* FUNC4 (struct lpfc_hba*,struct lpfc_nodelist*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_io_buf*,struct lpfc_nodelist*,struct lpfc_fc4_ctrl_stat*) ; 
 int FUNC8 (struct lpfc_vport*,struct lpfc_io_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*,struct lpfc_io_buf*) ; 
 int FUNC12 (struct lpfc_hba*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ nvme_admin_keep_alive ; 
 int FUNC13 () ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct nvme_fc_local_port *pnvme_lport,
			struct nvme_fc_remote_port *pnvme_rport,
			void *hw_queue_handle,
			struct nvmefc_fcp_req *pnvme_fcreq)
{
	int ret = 0;
	int expedite = 0;
	int idx, cpu;
	struct lpfc_nvme_lport *lport;
	struct lpfc_fc4_ctrl_stat *cstat;
	struct lpfc_vport *vport;
	struct lpfc_hba *phba;
	struct lpfc_nodelist *ndlp;
	struct lpfc_io_buf *lpfc_ncmd;
	struct lpfc_nvme_rport *rport;
	struct lpfc_nvme_qhandle *lpfc_queue_info;
	struct lpfc_nvme_fcpreq_priv *freqpriv;
	struct nvme_common_command *sqe;
#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	uint64_t start = 0;
#endif

	/* Validate pointers. LLDD fault handling with transport does
	 * have timing races.
	 */
	lport = (struct lpfc_nvme_lport *)pnvme_lport->private;
	if (FUNC14(!lport)) {
		ret = -EINVAL;
		goto out_fail;
	}

	vport = lport->vport;

	if (FUNC14(!hw_queue_handle)) {
		FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
				 "6117 Fail IO, NULL hw_queue_handle\n");
		FUNC1(&lport->xmt_fcp_err);
		ret = -EBUSY;
		goto out_fail;
	}

	phba = vport->phba;

	if (vport->load_flag & FC_UNLOADING) {
		ret = -ENODEV;
		goto out_fail;
	}

	if (FUNC14(vport->load_flag & FC_UNLOADING)) {
		FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
				 "6124 Fail IO, Driver unload\n");
		FUNC1(&lport->xmt_fcp_err);
		ret = -ENODEV;
		goto out_fail;
	}

	freqpriv = pnvme_fcreq->private;
	if (FUNC14(!freqpriv)) {
		FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
				 "6158 Fail IO, NULL request data\n");
		FUNC1(&lport->xmt_fcp_err);
		ret = -EINVAL;
		goto out_fail;
	}

#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	if (phba->ktime_on)
		start = ktime_get_ns();
#endif
	rport = (struct lpfc_nvme_rport *)pnvme_rport->private;
	lpfc_queue_info = (struct lpfc_nvme_qhandle *)hw_queue_handle;

	/*
	 * Catch race where our node has transitioned, but the
	 * transport is still transitioning.
	 */
	ndlp = rport->ndlp;
	if (!ndlp || !FUNC0(ndlp)) {
		FUNC10(vport, KERN_INFO, LOG_NODE | LOG_NVME_IOERR,
				 "6053 Busy IO, ndlp not ready: rport x%px "
				  "ndlp x%px, DID x%06x\n",
				 rport, ndlp, pnvme_rport->port_id);
		FUNC1(&lport->xmt_fcp_err);
		ret = -EBUSY;
		goto out_fail;
	}

	/* The remote node has to be a mapped target or it's an error. */
	if ((ndlp->nlp_type & NLP_NVME_TARGET) &&
	    (ndlp->nlp_state != NLP_STE_MAPPED_NODE)) {
		FUNC10(vport, KERN_INFO, LOG_NODE | LOG_NVME_IOERR,
				 "6036 Fail IO, DID x%06x not ready for "
				 "IO. State x%x, Type x%x Flg x%x\n",
				 pnvme_rport->port_id,
				 ndlp->nlp_state, ndlp->nlp_type,
				 ndlp->upcall_flags);
		FUNC1(&lport->xmt_fcp_bad_ndlp);
		ret = -EBUSY;
		goto out_fail;

	}

	/* Currently only NVME Keep alive commands should be expedited
	 * if the driver runs out of a resource. These should only be
	 * issued on the admin queue, qidx 0
	 */
	if (!lpfc_queue_info->qidx && !pnvme_fcreq->sg_cnt) {
		sqe = &((struct nvme_fc_cmd_iu *)
			pnvme_fcreq->cmdaddr)->sqe.common;
		if (sqe->opcode == nvme_admin_keep_alive)
			expedite = 1;
	}

	/* The node is shared with FCP IO, make sure the IO pending count does
	 * not exceed the programmed depth.
	 */
	if (FUNC6(phba, ndlp)) {
		if ((FUNC2(&ndlp->cmd_pending) >= ndlp->cmd_qdepth) &&
		    !expedite) {
			FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
					 "6174 Fail IO, ndlp qdepth exceeded: "
					 "idx %d DID %x pend %d qdepth %d\n",
					 lpfc_queue_info->index, ndlp->nlp_DID,
					 FUNC2(&ndlp->cmd_pending),
					 ndlp->cmd_qdepth);
			FUNC1(&lport->xmt_fcp_qdepth);
			ret = -EBUSY;
			goto out_fail;
		}
	}

	/* Lookup Hardware Queue index based on fcp_io_sched module parameter */
	if (phba->cfg_fcp_io_sched == LPFC_FCP_SCHED_BY_HDWQ) {
		idx = lpfc_queue_info->index;
	} else {
		cpu = FUNC13();
		idx = phba->sli4_hba.cpu_map[cpu].hdwq;
	}

	lpfc_ncmd = FUNC4(phba, ndlp, idx, expedite);
	if (lpfc_ncmd == NULL) {
		FUNC1(&lport->xmt_fcp_noxri);
		FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
				 "6065 Fail IO, driver buffer pool is empty: "
				 "idx %d DID %x\n",
				 lpfc_queue_info->index, ndlp->nlp_DID);
		ret = -EBUSY;
		goto out_fail;
	}
#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	if (start) {
		lpfc_ncmd->ts_cmd_start = start;
		lpfc_ncmd->ts_last_cmd = phba->ktime_last_cmd;
	} else {
		lpfc_ncmd->ts_cmd_start = 0;
	}
#endif

	/*
	 * Store the data needed by the driver to issue, abort, and complete
	 * an IO.
	 * Do not let the IO hang out forever.  There is no midlayer issuing
	 * an abort so inform the FW of the maximum IO pending time.
	 */
	freqpriv->nvme_buf = lpfc_ncmd;
	lpfc_ncmd->nvmeCmd = pnvme_fcreq;
	lpfc_ncmd->ndlp = ndlp;
	lpfc_ncmd->qidx = lpfc_queue_info->qidx;

	/*
	 * Issue the IO on the WQ indicated by index in the hw_queue_handle.
	 * This identfier was create in our hardware queue create callback
	 * routine. The driver now is dependent on the IO queue steering from
	 * the transport.  We are trusting the upper NVME layers know which
	 * index to use and that they have affinitized a CPU to this hardware
	 * queue. A hardware queue maps to a driver MSI-X vector/EQ/CQ/WQ.
	 */
	lpfc_ncmd->cur_iocbq.hba_wqidx = idx;
	cstat = &phba->sli4_hba.hdwq[idx].nvme_cstat;

	FUNC7(vport, lpfc_ncmd, ndlp, cstat);
	ret = FUNC8(vport, lpfc_ncmd);
	if (ret) {
		FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
				 "6175 Fail IO, Prep DMA: "
				 "idx %d DID %x\n",
				 lpfc_queue_info->index, ndlp->nlp_DID);
		FUNC1(&lport->xmt_fcp_err);
		ret = -ENOMEM;
		goto out_free_nvme_buf;
	}

	FUNC9(phba, "NVME FCP XMIT: xri x%x idx %d to %06x\n",
			 lpfc_ncmd->cur_iocbq.sli4_xritag,
			 lpfc_queue_info->index, ndlp->nlp_DID);

	ret = FUNC12(phba, lpfc_ncmd->hdwq, &lpfc_ncmd->cur_iocbq);
	if (ret) {
		FUNC1(&lport->xmt_fcp_wqerr);
		FUNC10(vport, KERN_INFO, LOG_NVME_IOERR,
				 "6113 Fail IO, Could not issue WQE err %x "
				 "sid: x%x did: x%x oxid: x%x\n",
				 ret, vport->fc_myDID, ndlp->nlp_DID,
				 lpfc_ncmd->cur_iocbq.sli4_xritag);
		goto out_free_nvme_buf;
	}

	if (phba->cfg_xri_rebalancing)
		FUNC5(phba, lpfc_ncmd->hdwq_no);

#ifdef CONFIG_SCSI_LPFC_DEBUG_FS
	if (lpfc_ncmd->ts_cmd_start)
		lpfc_ncmd->ts_cmd_wqput = ktime_get_ns();

	if (phba->cpucheck_on & LPFC_CHECK_NVME_IO) {
		cpu = raw_smp_processor_id();
		if (cpu < LPFC_CHECK_CPU_CNT) {
			lpfc_ncmd->cpu = cpu;
			if (idx != cpu)
				lpfc_printf_vlog(vport,
						 KERN_INFO, LOG_NVME_IOERR,
						"6702 CPU Check cmd: "
						"cpu %d wq %d\n",
						lpfc_ncmd->cpu,
						lpfc_queue_info->index);
			phba->sli4_hba.hdwq[idx].cpucheck_xmt_io[cpu]++;
		}
	}
#endif
	return 0;

 out_free_nvme_buf:
	if (lpfc_ncmd->nvmeCmd->sg_cnt) {
		if (lpfc_ncmd->nvmeCmd->io_dir == NVMEFC_FCP_WRITE)
			cstat->output_requests--;
		else
			cstat->input_requests--;
	} else
		cstat->control_requests--;
	FUNC11(phba, lpfc_ncmd);
 out_fail:
	return ret;
}