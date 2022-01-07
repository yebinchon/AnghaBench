
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ num_present_cpu; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hba_flag; int cfg_enable_fc4_type; int cfg_auto_imax; scalar_t__ cfg_hdw_queue; scalar_t__ cfg_irq_chann; long cfg_soft_wwnn; long cfg_soft_wwpn; int cfg_enable_dss; TYPE_1__ sli4_hba; scalar_t__ cfg_enable_pbde; scalar_t__ cfg_fcp_imax; scalar_t__ cfg_xri_rebalancing; scalar_t__ cfg_enable_bbcr; scalar_t__ cfg_nvmet_mrq; scalar_t__ nvmet_support; int sli3_options; scalar_t__ cfg_enable_bg; scalar_t__ cfg_poll; scalar_t__ cfg_oas_priority; scalar_t__ cfg_oas_flags; scalar_t__ cfg_oas_lun_status; scalar_t__ cfg_oas_lun_state; int cfg_oas_vpt_wwpn; int cfg_oas_tgt_wwpn; scalar_t__ cfg_EnableXLane; } ;


 int HBA_FCOE_MODE ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LPFC_ENABLE_FCP ;
 int LPFC_SLI3_BG_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_EnableXLane ;
 int lpfc_EnableXLane_init (struct lpfc_hba*,int ) ;
 int lpfc_XLanePriority ;
 int lpfc_XLanePriority_init (struct lpfc_hba*,int ) ;
 int lpfc_ack0 ;
 int lpfc_ack0_init (struct lpfc_hba*,int ) ;
 int lpfc_aer_support ;
 int lpfc_aer_support_init (struct lpfc_hba*,int ) ;
 int lpfc_cq_max_proc_limit ;
 int lpfc_cq_max_proc_limit_init (struct lpfc_hba*,int ) ;
 int lpfc_cq_poll_threshold ;
 int lpfc_cq_poll_threshold_init (struct lpfc_hba*,int ) ;
 int lpfc_cr_count ;
 int lpfc_cr_count_init (struct lpfc_hba*,int ) ;
 int lpfc_cr_delay ;
 int lpfc_cr_delay_init (struct lpfc_hba*,int ) ;
 int lpfc_delay_discovery ;
 int lpfc_delay_discovery_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_SmartSAN ;
 int lpfc_enable_SmartSAN_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_bbcr ;
 int lpfc_enable_bbcr_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_bg ;
 int lpfc_enable_bg_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_dpp ;
 int lpfc_enable_dpp_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_fc4_type ;
 int lpfc_enable_fc4_type_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_hba_heartbeat ;
 int lpfc_enable_hba_heartbeat_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_hba_reset ;
 int lpfc_enable_hba_reset_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_mds_diags ;
 int lpfc_enable_mds_diags_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_npiv ;
 int lpfc_enable_npiv_init (struct lpfc_hba*,int ) ;
 int lpfc_enable_rrq ;
 int lpfc_enable_rrq_init (struct lpfc_hba*,int ) ;
 int lpfc_fcf_failover_policy ;
 int lpfc_fcf_failover_policy_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp2_no_tgt_reset ;
 int lpfc_fcp2_no_tgt_reset_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_cpu_map ;
 int lpfc_fcp_cpu_map_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_imax ;
 int lpfc_fcp_imax_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_io_sched ;
 int lpfc_fcp_io_sched_init (struct lpfc_hba*,int ) ;
 int lpfc_fcp_mq_threshold ;
 int lpfc_fcp_mq_threshold_init (struct lpfc_hba*,int ) ;
 int lpfc_fdmi_on ;
 int lpfc_fdmi_on_init (struct lpfc_hba*,int ) ;
 int lpfc_force_rscn ;
 int lpfc_force_rscn_init (struct lpfc_hba*,int ) ;
 int lpfc_get_hba_function_mode (struct lpfc_hba*) ;
 int lpfc_hba_log_verbose_init (struct lpfc_hba*,int ) ;
 int lpfc_hba_queue_depth ;
 int lpfc_hba_queue_depth_init (struct lpfc_hba*,int ) ;
 int lpfc_hdw_queue ;
 int lpfc_hdw_queue_init (struct lpfc_hba*,int ) ;
 int lpfc_iocb_cnt ;
 int lpfc_iocb_cnt_init (struct lpfc_hba*,int ) ;
 int lpfc_irq_chann ;
 int lpfc_irq_chann_init (struct lpfc_hba*,int ) ;
 int lpfc_link_speed ;
 int lpfc_link_speed_init (struct lpfc_hba*,int ) ;
 int lpfc_log_verbose ;
 int lpfc_multi_ring_rctl ;
 int lpfc_multi_ring_rctl_init (struct lpfc_hba*,int ) ;
 int lpfc_multi_ring_support ;
 int lpfc_multi_ring_support_init (struct lpfc_hba*,int ) ;
 int lpfc_multi_ring_type ;
 int lpfc_multi_ring_type_init (struct lpfc_hba*,int ) ;
 int lpfc_ns_query ;
 int lpfc_ns_query_init (struct lpfc_hba*,int ) ;
 int lpfc_nvme_embed_cmd ;
 int lpfc_nvme_embed_cmd_init (struct lpfc_hba*,int ) ;
 int lpfc_nvme_enable_fb ;
 int lpfc_nvme_enable_fb_init (struct lpfc_hba*,int ) ;
 int lpfc_nvme_oas ;
 int lpfc_nvme_oas_init (struct lpfc_hba*,int ) ;
 int lpfc_nvmet_fb_size ;
 int lpfc_nvmet_fb_size_init (struct lpfc_hba*,int ) ;
 int lpfc_nvmet_mrq ;
 int lpfc_nvmet_mrq_init (struct lpfc_hba*,int ) ;
 int lpfc_nvmet_mrq_post ;
 int lpfc_nvmet_mrq_post_init (struct lpfc_hba*,int ) ;
 scalar_t__ lpfc_poll ;
 int lpfc_poll_tmo ;
 int lpfc_poll_tmo_init (struct lpfc_hba*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_prot_guard ;
 int lpfc_prot_guard_init (struct lpfc_hba*,int ) ;
 int lpfc_prot_mask ;
 int lpfc_prot_mask_init (struct lpfc_hba*,int ) ;
 int lpfc_ras_fwlog_buffsize ;
 int lpfc_ras_fwlog_buffsize_init (struct lpfc_hba*,int ) ;
 int lpfc_ras_fwlog_func ;
 int lpfc_ras_fwlog_func_init (struct lpfc_hba*,int ) ;
 int lpfc_ras_fwlog_level ;
 int lpfc_ras_fwlog_level_init (struct lpfc_hba*,int ) ;
 int lpfc_req_fw_upgrade ;
 int lpfc_request_firmware_upgrade_init (struct lpfc_hba*,int ) ;
 int lpfc_sg_seg_cnt ;
 int lpfc_sg_seg_cnt_init (struct lpfc_hba*,int ) ;
 int lpfc_sli_mode ;
 int lpfc_sli_mode_init (struct lpfc_hba*,int ) ;
 int lpfc_sriov_nr_virtfn ;
 int lpfc_sriov_nr_virtfn_init (struct lpfc_hba*,int ) ;
 int lpfc_suppress_link_up ;
 int lpfc_suppress_link_up_init (struct lpfc_hba*,int ) ;
 int lpfc_suppress_rsp ;
 int lpfc_suppress_rsp_init (struct lpfc_hba*,int ) ;
 int lpfc_task_mgmt_tmo ;
 int lpfc_task_mgmt_tmo_init (struct lpfc_hba*,int ) ;
 int lpfc_topology ;
 int lpfc_topology_init (struct lpfc_hba*,int ) ;
 int lpfc_use_msi ;
 int lpfc_use_msi_init (struct lpfc_hba*,int ) ;
 int lpfc_xri_rebalancing ;
 int lpfc_xri_rebalancing_init (struct lpfc_hba*,int ) ;
 int memset (int ,int ,int) ;

void
lpfc_get_cfgparam(struct lpfc_hba *phba)
{
 lpfc_fcp_io_sched_init(phba, lpfc_fcp_io_sched);
 lpfc_ns_query_init(phba, lpfc_ns_query);
 lpfc_fcp2_no_tgt_reset_init(phba, lpfc_fcp2_no_tgt_reset);
 lpfc_cr_delay_init(phba, lpfc_cr_delay);
 lpfc_cr_count_init(phba, lpfc_cr_count);
 lpfc_multi_ring_support_init(phba, lpfc_multi_ring_support);
 lpfc_multi_ring_rctl_init(phba, lpfc_multi_ring_rctl);
 lpfc_multi_ring_type_init(phba, lpfc_multi_ring_type);
 lpfc_ack0_init(phba, lpfc_ack0);
 lpfc_xri_rebalancing_init(phba, lpfc_xri_rebalancing);
 lpfc_topology_init(phba, lpfc_topology);
 lpfc_link_speed_init(phba, lpfc_link_speed);
 lpfc_poll_tmo_init(phba, lpfc_poll_tmo);
 lpfc_task_mgmt_tmo_init(phba, lpfc_task_mgmt_tmo);
 lpfc_enable_npiv_init(phba, lpfc_enable_npiv);
 lpfc_fcf_failover_policy_init(phba, lpfc_fcf_failover_policy);
 lpfc_enable_rrq_init(phba, lpfc_enable_rrq);
 lpfc_fdmi_on_init(phba, lpfc_fdmi_on);
 lpfc_enable_SmartSAN_init(phba, lpfc_enable_SmartSAN);
 lpfc_use_msi_init(phba, lpfc_use_msi);
 lpfc_nvme_oas_init(phba, lpfc_nvme_oas);
 lpfc_nvme_embed_cmd_init(phba, lpfc_nvme_embed_cmd);
 lpfc_fcp_imax_init(phba, lpfc_fcp_imax);
 lpfc_force_rscn_init(phba, lpfc_force_rscn);
 lpfc_cq_poll_threshold_init(phba, lpfc_cq_poll_threshold);
 lpfc_cq_max_proc_limit_init(phba, lpfc_cq_max_proc_limit);
 lpfc_fcp_cpu_map_init(phba, lpfc_fcp_cpu_map);
 lpfc_enable_hba_reset_init(phba, lpfc_enable_hba_reset);
 lpfc_enable_hba_heartbeat_init(phba, lpfc_enable_hba_heartbeat);

 lpfc_EnableXLane_init(phba, lpfc_EnableXLane);
 if (phba->sli_rev != LPFC_SLI_REV4)
  phba->cfg_EnableXLane = 0;
 lpfc_XLanePriority_init(phba, lpfc_XLanePriority);

 memset(phba->cfg_oas_tgt_wwpn, 0, (8 * sizeof(uint8_t)));
 memset(phba->cfg_oas_vpt_wwpn, 0, (8 * sizeof(uint8_t)));
 phba->cfg_oas_lun_state = 0;
 phba->cfg_oas_lun_status = 0;
 phba->cfg_oas_flags = 0;
 phba->cfg_oas_priority = 0;
 lpfc_enable_bg_init(phba, lpfc_enable_bg);
 lpfc_prot_mask_init(phba, lpfc_prot_mask);
 lpfc_prot_guard_init(phba, lpfc_prot_guard);
 if (phba->sli_rev == LPFC_SLI_REV4)
  phba->cfg_poll = 0;
 else
  phba->cfg_poll = lpfc_poll;


 lpfc_get_hba_function_mode(phba);


 if (phba->cfg_enable_bg && phba->hba_flag & HBA_FCOE_MODE) {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0581 BlockGuard feature not supported\n");

  phba->cfg_enable_bg = 0;
 } else if (phba->cfg_enable_bg) {
  phba->sli3_options |= LPFC_SLI3_BG_ENABLED;
 }

 lpfc_suppress_rsp_init(phba, lpfc_suppress_rsp);

 lpfc_enable_fc4_type_init(phba, lpfc_enable_fc4_type);
 lpfc_nvmet_mrq_init(phba, lpfc_nvmet_mrq);
 lpfc_nvmet_mrq_post_init(phba, lpfc_nvmet_mrq_post);


 lpfc_nvme_enable_fb_init(phba, lpfc_nvme_enable_fb);
 lpfc_nvmet_fb_size_init(phba, lpfc_nvmet_fb_size);
 lpfc_fcp_mq_threshold_init(phba, lpfc_fcp_mq_threshold);
 lpfc_hdw_queue_init(phba, lpfc_hdw_queue);
 lpfc_irq_chann_init(phba, lpfc_irq_chann);
 lpfc_enable_bbcr_init(phba, lpfc_enable_bbcr);
 lpfc_enable_dpp_init(phba, lpfc_enable_dpp);

 if (phba->sli_rev != LPFC_SLI_REV4) {

  phba->nvmet_support = 0;
  phba->cfg_nvmet_mrq = 0;
  phba->cfg_enable_fc4_type = LPFC_ENABLE_FCP;
  phba->cfg_enable_bbcr = 0;
  phba->cfg_xri_rebalancing = 0;
 } else {

  if (!(phba->cfg_enable_fc4_type & LPFC_ENABLE_FCP))
   phba->cfg_enable_fc4_type |= LPFC_ENABLE_FCP;
 }

 phba->cfg_auto_imax = (phba->cfg_fcp_imax) ? 0 : 1;

 phba->cfg_enable_pbde = 0;


 if (phba->cfg_hdw_queue == 0)
  phba->cfg_hdw_queue = phba->sli4_hba.num_present_cpu;
 if (phba->cfg_irq_chann == 0)
  phba->cfg_irq_chann = phba->sli4_hba.num_present_cpu;
 if (phba->cfg_irq_chann > phba->cfg_hdw_queue)
  phba->cfg_irq_chann = phba->cfg_hdw_queue;

 phba->cfg_soft_wwnn = 0L;
 phba->cfg_soft_wwpn = 0L;
 lpfc_sg_seg_cnt_init(phba, lpfc_sg_seg_cnt);
 lpfc_hba_queue_depth_init(phba, lpfc_hba_queue_depth);
 lpfc_hba_log_verbose_init(phba, lpfc_log_verbose);
 lpfc_aer_support_init(phba, lpfc_aer_support);
 lpfc_sriov_nr_virtfn_init(phba, lpfc_sriov_nr_virtfn);
 lpfc_request_firmware_upgrade_init(phba, lpfc_req_fw_upgrade);
 lpfc_suppress_link_up_init(phba, lpfc_suppress_link_up);
 lpfc_iocb_cnt_init(phba, lpfc_iocb_cnt);
 lpfc_delay_discovery_init(phba, lpfc_delay_discovery);
 lpfc_sli_mode_init(phba, lpfc_sli_mode);
 phba->cfg_enable_dss = 1;
 lpfc_enable_mds_diags_init(phba, lpfc_enable_mds_diags);
 lpfc_ras_fwlog_buffsize_init(phba, lpfc_ras_fwlog_buffsize);
 lpfc_ras_fwlog_level_init(phba, lpfc_ras_fwlog_level);
 lpfc_ras_fwlog_func_init(phba, lpfc_ras_fwlog_func);

 return;
}
