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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {scalar_t__ num_present_cpu; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hba_flag; int cfg_enable_fc4_type; int cfg_auto_imax; scalar_t__ cfg_hdw_queue; scalar_t__ cfg_irq_chann; long cfg_soft_wwnn; long cfg_soft_wwpn; int cfg_enable_dss; TYPE_1__ sli4_hba; scalar_t__ cfg_enable_pbde; scalar_t__ cfg_fcp_imax; scalar_t__ cfg_xri_rebalancing; scalar_t__ cfg_enable_bbcr; scalar_t__ cfg_nvmet_mrq; scalar_t__ nvmet_support; int /*<<< orphan*/  sli3_options; scalar_t__ cfg_enable_bg; scalar_t__ cfg_poll; scalar_t__ cfg_oas_priority; scalar_t__ cfg_oas_flags; scalar_t__ cfg_oas_lun_status; scalar_t__ cfg_oas_lun_state; int /*<<< orphan*/  cfg_oas_vpt_wwpn; int /*<<< orphan*/  cfg_oas_tgt_wwpn; scalar_t__ cfg_EnableXLane; } ;

/* Variables and functions */
 int HBA_FCOE_MODE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int LPFC_ENABLE_FCP ; 
 int /*<<< orphan*/  LPFC_SLI3_BG_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  lpfc_EnableXLane ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_XLanePriority ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_ack0 ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_aer_support ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cq_max_proc_limit ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cq_poll_threshold ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cr_count ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cr_delay ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_delay_discovery ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_SmartSAN ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_bbcr ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_bg ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_dpp ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_fc4_type ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_hba_heartbeat ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_hba_reset ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_mds_diags ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_npiv ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_enable_rrq ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcf_failover_policy ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp2_no_tgt_reset ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_cpu_map ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_imax ; 
 int /*<<< orphan*/  FUNC22 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_io_sched ; 
 int /*<<< orphan*/  FUNC23 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fcp_mq_threshold ; 
 int /*<<< orphan*/  FUNC24 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_fdmi_on ; 
 int /*<<< orphan*/  FUNC25 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_force_rscn ; 
 int /*<<< orphan*/  FUNC26 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC28 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_hba_queue_depth ; 
 int /*<<< orphan*/  FUNC29 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_hdw_queue ; 
 int /*<<< orphan*/  FUNC30 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_iocb_cnt ; 
 int /*<<< orphan*/  FUNC31 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_irq_chann ; 
 int /*<<< orphan*/  FUNC32 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_link_speed ; 
 int /*<<< orphan*/  FUNC33 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_log_verbose ; 
 int /*<<< orphan*/  lpfc_multi_ring_rctl ; 
 int /*<<< orphan*/  FUNC34 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_multi_ring_support ; 
 int /*<<< orphan*/  FUNC35 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_multi_ring_type ; 
 int /*<<< orphan*/  FUNC36 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_ns_query ; 
 int /*<<< orphan*/  FUNC37 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nvme_embed_cmd ; 
 int /*<<< orphan*/  FUNC38 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nvme_enable_fb ; 
 int /*<<< orphan*/  FUNC39 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nvme_oas ; 
 int /*<<< orphan*/  FUNC40 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nvmet_fb_size ; 
 int /*<<< orphan*/  FUNC41 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nvmet_mrq ; 
 int /*<<< orphan*/  FUNC42 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_nvmet_mrq_post ; 
 int /*<<< orphan*/  FUNC43 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ lpfc_poll ; 
 int /*<<< orphan*/  lpfc_poll_tmo ; 
 int /*<<< orphan*/  FUNC44 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lpfc_prot_guard ; 
 int /*<<< orphan*/  FUNC46 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_prot_mask ; 
 int /*<<< orphan*/  FUNC47 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_ras_fwlog_buffsize ; 
 int /*<<< orphan*/  FUNC48 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_ras_fwlog_func ; 
 int /*<<< orphan*/  FUNC49 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_ras_fwlog_level ; 
 int /*<<< orphan*/  FUNC50 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_req_fw_upgrade ; 
 int /*<<< orphan*/  FUNC51 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sg_seg_cnt ; 
 int /*<<< orphan*/  FUNC52 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_mode ; 
 int /*<<< orphan*/  FUNC53 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sriov_nr_virtfn ; 
 int /*<<< orphan*/  FUNC54 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_suppress_link_up ; 
 int /*<<< orphan*/  FUNC55 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_suppress_rsp ; 
 int /*<<< orphan*/  FUNC56 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_task_mgmt_tmo ; 
 int /*<<< orphan*/  FUNC57 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_topology ; 
 int /*<<< orphan*/  FUNC58 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_use_msi ; 
 int /*<<< orphan*/  FUNC59 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_xri_rebalancing ; 
 int /*<<< orphan*/  FUNC60 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC62(struct lpfc_hba *phba)
{
	FUNC23(phba, lpfc_fcp_io_sched);
	FUNC37(phba, lpfc_ns_query);
	FUNC20(phba, lpfc_fcp2_no_tgt_reset);
	FUNC7(phba, lpfc_cr_delay);
	FUNC6(phba, lpfc_cr_count);
	FUNC35(phba, lpfc_multi_ring_support);
	FUNC34(phba, lpfc_multi_ring_rctl);
	FUNC36(phba, lpfc_multi_ring_type);
	FUNC2(phba, lpfc_ack0);
	FUNC60(phba, lpfc_xri_rebalancing);
	FUNC58(phba, lpfc_topology);
	FUNC33(phba, lpfc_link_speed);
	FUNC44(phba, lpfc_poll_tmo);
	FUNC57(phba, lpfc_task_mgmt_tmo);
	FUNC17(phba, lpfc_enable_npiv);
	FUNC19(phba, lpfc_fcf_failover_policy);
	FUNC18(phba, lpfc_enable_rrq);
	FUNC25(phba, lpfc_fdmi_on);
	FUNC9(phba, lpfc_enable_SmartSAN);
	FUNC59(phba, lpfc_use_msi);
	FUNC40(phba, lpfc_nvme_oas);
	FUNC38(phba, lpfc_nvme_embed_cmd);
	FUNC22(phba, lpfc_fcp_imax);
	FUNC26(phba, lpfc_force_rscn);
	FUNC5(phba, lpfc_cq_poll_threshold);
	FUNC4(phba, lpfc_cq_max_proc_limit);
	FUNC21(phba, lpfc_fcp_cpu_map);
	FUNC15(phba, lpfc_enable_hba_reset);
	FUNC14(phba, lpfc_enable_hba_heartbeat);

	FUNC0(phba, lpfc_EnableXLane);
	if (phba->sli_rev != LPFC_SLI_REV4)
		phba->cfg_EnableXLane = 0;
	FUNC1(phba, lpfc_XLanePriority);

	FUNC61(phba->cfg_oas_tgt_wwpn, 0, (8 * sizeof(uint8_t)));
	FUNC61(phba->cfg_oas_vpt_wwpn, 0, (8 * sizeof(uint8_t)));
	phba->cfg_oas_lun_state = 0;
	phba->cfg_oas_lun_status = 0;
	phba->cfg_oas_flags = 0;
	phba->cfg_oas_priority = 0;
	FUNC11(phba, lpfc_enable_bg);
	FUNC47(phba, lpfc_prot_mask);
	FUNC46(phba, lpfc_prot_guard);
	if (phba->sli_rev == LPFC_SLI_REV4)
		phba->cfg_poll = 0;
	else
		phba->cfg_poll = lpfc_poll;

	/* Get the function mode */
	FUNC27(phba);

	/* BlockGuard allowed for FC only. */
	if (phba->cfg_enable_bg && phba->hba_flag & HBA_FCOE_MODE) {
		FUNC45(phba, KERN_INFO, LOG_INIT,
				"0581 BlockGuard feature not supported\n");
		/* If set, clear the BlockGuard support param */
		phba->cfg_enable_bg = 0;
	} else if (phba->cfg_enable_bg) {
		phba->sli3_options |= LPFC_SLI3_BG_ENABLED;
	}

	FUNC56(phba, lpfc_suppress_rsp);

	FUNC13(phba, lpfc_enable_fc4_type);
	FUNC42(phba, lpfc_nvmet_mrq);
	FUNC43(phba, lpfc_nvmet_mrq_post);

	/* Initialize first burst. Target vs Initiator are different. */
	FUNC39(phba, lpfc_nvme_enable_fb);
	FUNC41(phba, lpfc_nvmet_fb_size);
	FUNC24(phba, lpfc_fcp_mq_threshold);
	FUNC30(phba, lpfc_hdw_queue);
	FUNC32(phba, lpfc_irq_chann);
	FUNC10(phba, lpfc_enable_bbcr);
	FUNC12(phba, lpfc_enable_dpp);

	if (phba->sli_rev != LPFC_SLI_REV4) {
		/* NVME only supported on SLI4 */
		phba->nvmet_support = 0;
		phba->cfg_nvmet_mrq = 0;
		phba->cfg_enable_fc4_type = LPFC_ENABLE_FCP;
		phba->cfg_enable_bbcr = 0;
		phba->cfg_xri_rebalancing = 0;
	} else {
		/* We MUST have FCP support */
		if (!(phba->cfg_enable_fc4_type & LPFC_ENABLE_FCP))
			phba->cfg_enable_fc4_type |= LPFC_ENABLE_FCP;
	}

	phba->cfg_auto_imax = (phba->cfg_fcp_imax) ? 0 : 1;

	phba->cfg_enable_pbde = 0;

	/* A value of 0 means use the number of CPUs found in the system */
	if (phba->cfg_hdw_queue == 0)
		phba->cfg_hdw_queue = phba->sli4_hba.num_present_cpu;
	if (phba->cfg_irq_chann == 0)
		phba->cfg_irq_chann = phba->sli4_hba.num_present_cpu;
	if (phba->cfg_irq_chann > phba->cfg_hdw_queue)
		phba->cfg_irq_chann = phba->cfg_hdw_queue;

	phba->cfg_soft_wwnn = 0L;
	phba->cfg_soft_wwpn = 0L;
	FUNC52(phba, lpfc_sg_seg_cnt);
	FUNC29(phba, lpfc_hba_queue_depth);
	FUNC28(phba, lpfc_log_verbose);
	FUNC3(phba, lpfc_aer_support);
	FUNC54(phba, lpfc_sriov_nr_virtfn);
	FUNC51(phba, lpfc_req_fw_upgrade);
	FUNC55(phba, lpfc_suppress_link_up);
	FUNC31(phba, lpfc_iocb_cnt);
	FUNC8(phba, lpfc_delay_discovery);
	FUNC53(phba, lpfc_sli_mode);
	phba->cfg_enable_dss = 1;
	FUNC16(phba, lpfc_enable_mds_diags);
	FUNC48(phba, lpfc_ras_fwlog_buffsize);
	FUNC50(phba, lpfc_ras_fwlog_level);
	FUNC49(phba, lpfc_ras_fwlog_func);

	return;
}