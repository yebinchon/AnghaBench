
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_qla_host {int loop_id; int loop_state; } ;
struct qla_hw_data {TYPE_6__* pdev; int dpc_active; } ;
struct link_statistics {scalar_t__ discarded_frames; scalar_t__ dropped_frames; int nos_rcvd; int rx_frames; int tx_frames; int lip_cnt; int inval_crc_cnt; int inval_xmit_word_cnt; int prim_seq_err_cnt; int loss_sig_cnt; int loss_sync_cnt; int link_fail_cnt; } ;
struct fc_host_statistics {int rx_words; int tx_words; int fcp_input_megabytes; int fcp_output_megabytes; scalar_t__ seconds_since_last_reset; int fcp_output_requests; int fcp_input_requests; int fcp_control_requests; scalar_t__ error_frames; int nos_count; scalar_t__ dumped_frames; int rx_frames; int tx_frames; int lip_count; int invalid_crc_count; int invalid_tx_word_count; int prim_seq_protocol_err_count; int loss_of_signal_count; int loss_of_sync_count; int link_failure_count; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_8__ {int input_bytes; int output_bytes; scalar_t__ jiffies_at_last_reset; int output_requests; int input_requests; int control_requests; } ;
struct TYPE_9__ {TYPE_1__ qla_stats; int dpc_flags; struct qla_hw_data* hw; struct fc_host_statistics fc_host_stat; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef int dma_addr_t ;
struct TYPE_10__ {int dev; } ;


 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 scalar_t__ LOOP_READY ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int UNLOADING ;
 scalar_t__ atomic_read (int *) ;
 struct link_statistics* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct link_statistics*,int ) ;
 int do_div (scalar_t__,int ) ;
 scalar_t__ get_jiffies_64 () ;
 int memset (struct fc_host_statistics*,int,int) ;
 int pci_channel_offline (TYPE_6__*) ;
 struct scsi_qla_host* pci_get_drvdata (TYPE_6__*) ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_warn ;
 int qla24xx_get_isp_stats (struct scsi_qla_host*,struct link_statistics*,int ,int ) ;
 scalar_t__ qla2x00_chip_is_down (TYPE_2__*) ;
 int qla2x00_get_link_status (struct scsi_qla_host*,int ,struct link_statistics*,int ) ;
 TYPE_2__* shost_priv (struct Scsi_Host*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct fc_host_statistics *
qla2x00_get_fc_host_stats(struct Scsi_Host *shost)
{
 scsi_qla_host_t *vha = shost_priv(shost);
 struct qla_hw_data *ha = vha->hw;
 struct scsi_qla_host *base_vha = pci_get_drvdata(ha->pdev);
 int rval;
 struct link_statistics *stats;
 dma_addr_t stats_dma;
 struct fc_host_statistics *p = &vha->fc_host_stat;

 memset(p, -1, sizeof(*p));

 if (IS_QLAFX00(vha->hw))
  goto done;

 if (test_bit(UNLOADING, &vha->dpc_flags))
  goto done;

 if (unlikely(pci_channel_offline(ha->pdev)))
  goto done;

 if (qla2x00_chip_is_down(vha))
  goto done;

 stats = dma_alloc_coherent(&ha->pdev->dev, sizeof(*stats), &stats_dma,
       GFP_KERNEL);
 if (!stats) {
  ql_log(ql_log_warn, vha, 0x707d,
      "Failed to allocate memory for stats.\n");
  goto done;
 }

 rval = QLA_FUNCTION_FAILED;
 if (IS_FWI2_CAPABLE(ha)) {
  rval = qla24xx_get_isp_stats(base_vha, stats, stats_dma, 0);
 } else if (atomic_read(&base_vha->loop_state) == LOOP_READY &&
     !ha->dpc_active) {

  rval = qla2x00_get_link_status(base_vha, base_vha->loop_id,
      stats, stats_dma);
 }

 if (rval != QLA_SUCCESS)
  goto done_free;

 p->link_failure_count = stats->link_fail_cnt;
 p->loss_of_sync_count = stats->loss_sync_cnt;
 p->loss_of_signal_count = stats->loss_sig_cnt;
 p->prim_seq_protocol_err_count = stats->prim_seq_err_cnt;
 p->invalid_tx_word_count = stats->inval_xmit_word_cnt;
 p->invalid_crc_count = stats->inval_crc_cnt;
 if (IS_FWI2_CAPABLE(ha)) {
  p->lip_count = stats->lip_cnt;
  p->tx_frames = stats->tx_frames;
  p->rx_frames = stats->rx_frames;
  p->dumped_frames = stats->discarded_frames;
  p->nos_count = stats->nos_rcvd;
  p->error_frames =
   stats->dropped_frames + stats->discarded_frames;
  p->rx_words = vha->qla_stats.input_bytes;
  p->tx_words = vha->qla_stats.output_bytes;
 }
 p->fcp_control_requests = vha->qla_stats.control_requests;
 p->fcp_input_requests = vha->qla_stats.input_requests;
 p->fcp_output_requests = vha->qla_stats.output_requests;
 p->fcp_input_megabytes = vha->qla_stats.input_bytes >> 20;
 p->fcp_output_megabytes = vha->qla_stats.output_bytes >> 20;
 p->seconds_since_last_reset =
  get_jiffies_64() - vha->qla_stats.jiffies_at_last_reset;
 do_div(p->seconds_since_last_reset, HZ);

done_free:
 dma_free_coherent(&ha->pdev->dev, sizeof(struct link_statistics),
     stats, stats_dma);
done:
 return p;
}
