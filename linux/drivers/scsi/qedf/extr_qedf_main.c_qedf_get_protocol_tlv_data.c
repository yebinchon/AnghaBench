
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* sel_fcf; } ;
struct qedf_ctx {int task_set_fulls; int busy; int packet_aborts; int lun_resets; TYPE_2__ ctlr; struct fc_lport* lport; } ;
struct qed_mfw_tlv_fcoe {int qos_pri_set; int qos_pri; int ra_tov_set; int ed_tov_set; int npiv_state_set; int npiv_state; int num_npiv_ids_set; int switch_name_set; int port_state_set; int link_failures_set; int fcoe_txq_depth_set; int fcoe_rxq_depth_set; int fcoe_rx_frames_set; int fcoe_tx_frames_set; int fcoe_rx_bytes_set; int fcoe_rx_bytes; int fcoe_tx_bytes_set; int fcoe_tx_bytes; int crc_count_set; int tx_abts_set; int tx_lun_rst_set; int abort_task_sets_set; int scsi_busy_set; int scsi_tsk_full_set; int scsi_tsk_full; int scsi_busy; int abort_task_sets; int tx_lun_rst; int tx_abts; int crc_count; int fcoe_tx_frames; int fcoe_rx_frames; void* fcoe_txq_depth; void* fcoe_rxq_depth; scalar_t__ link_failures; int port_state; int switch_name; int num_npiv_ids; int ed_tov; int ra_tov; } ;
struct fc_lport {scalar_t__ link_up; int e_d_tov; int r_a_tov; struct Scsi_Host* host; } ;
struct fc_host_statistics {int fcp_input_megabytes; int fcp_output_megabytes; int fcp_packet_aborts; int invalid_crc_count; int tx_frames; int rx_frames; scalar_t__ link_failure_count; } ;
struct fc_host_attrs {int npiv_vports_inuse; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int switch_name; } ;


 void* FCOE_PARAMS_NUM_TASKS ;
 int QED_MFW_TLV_PORT_STATE_FABRIC ;
 int QED_MFW_TLV_PORT_STATE_OFFLINE ;
 struct fc_host_statistics* qedf_fc_get_host_stats (struct Scsi_Host*) ;
 struct fc_host_attrs* shost_to_fc_host (struct Scsi_Host*) ;
 int u64_to_wwn (int ,int ) ;

void qedf_get_protocol_tlv_data(void *dev, void *data)
{
 struct qedf_ctx *qedf = dev;
 struct qed_mfw_tlv_fcoe *fcoe = data;
 struct fc_lport *lport = qedf->lport;
 struct Scsi_Host *host = lport->host;
 struct fc_host_attrs *fc_host = shost_to_fc_host(host);
 struct fc_host_statistics *hst;


 hst = qedf_fc_get_host_stats(host);

 fcoe->qos_pri_set = 1;
 fcoe->qos_pri = 3;

 fcoe->ra_tov_set = 1;
 fcoe->ra_tov = lport->r_a_tov;

 fcoe->ed_tov_set = 1;
 fcoe->ed_tov = lport->e_d_tov;

 fcoe->npiv_state_set = 1;
 fcoe->npiv_state = 1;

 fcoe->num_npiv_ids_set = 1;
 fcoe->num_npiv_ids = fc_host->npiv_vports_inuse;


 if (qedf->ctlr.sel_fcf) {
  fcoe->switch_name_set = 1;
  u64_to_wwn(qedf->ctlr.sel_fcf->switch_name, fcoe->switch_name);
 }

 fcoe->port_state_set = 1;

 if (lport->link_up)
  fcoe->port_state = QED_MFW_TLV_PORT_STATE_FABRIC;
 else
  fcoe->port_state = QED_MFW_TLV_PORT_STATE_OFFLINE;

 fcoe->link_failures_set = 1;
 fcoe->link_failures = (u16)hst->link_failure_count;

 fcoe->fcoe_txq_depth_set = 1;
 fcoe->fcoe_rxq_depth_set = 1;
 fcoe->fcoe_rxq_depth = FCOE_PARAMS_NUM_TASKS;
 fcoe->fcoe_txq_depth = FCOE_PARAMS_NUM_TASKS;

 fcoe->fcoe_rx_frames_set = 1;
 fcoe->fcoe_rx_frames = hst->rx_frames;

 fcoe->fcoe_tx_frames_set = 1;
 fcoe->fcoe_tx_frames = hst->tx_frames;

 fcoe->fcoe_rx_bytes_set = 1;
 fcoe->fcoe_rx_bytes = hst->fcp_input_megabytes * 1000000;

 fcoe->fcoe_tx_bytes_set = 1;
 fcoe->fcoe_tx_bytes = hst->fcp_output_megabytes * 1000000;

 fcoe->crc_count_set = 1;
 fcoe->crc_count = hst->invalid_crc_count;

 fcoe->tx_abts_set = 1;
 fcoe->tx_abts = hst->fcp_packet_aborts;

 fcoe->tx_lun_rst_set = 1;
 fcoe->tx_lun_rst = qedf->lun_resets;

 fcoe->abort_task_sets_set = 1;
 fcoe->abort_task_sets = qedf->packet_aborts;

 fcoe->scsi_busy_set = 1;
 fcoe->scsi_busy = qedf->busy;

 fcoe->scsi_tsk_full_set = 1;
 fcoe->scsi_tsk_full = qedf->task_set_fulls;
}
