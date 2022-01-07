
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct qedi_ctx {int cdev; } ;
struct qed_iscsi_stats {scalar_t__ iscsi_rx_r2t_pdu_cnt; scalar_t__ iscsi_rx_data_pdu_cnt; scalar_t__ iscsi_tx_data_pdu_cnt; int iscsi_rx_bytes_cnt; int iscsi_tx_bytes_cnt; } ;
struct iscsi_stats {int custom_length; TYPE_1__* custom; scalar_t__ timeout_err; scalar_t__ digest_err; int tmfrsp_pdus; int tmfcmd_pdus; void* r2t_pdus; void* datain_pdus; int scsirsp_pdus; void* dataout_pdus; int scsicmd_pdus; int rxdata_octets; int txdata_octets; } ;
struct iscsi_conn {int eh_abort_cnt; int tmfrsp_pdus_cnt; int tmfcmd_pdus_cnt; void* r2t_pdus_cnt; void* datain_pdus_cnt; int scsirsp_pdus_cnt; void* dataout_pdus_cnt; int scsicmd_pdus_cnt; int rxdata_octets; int txdata_octets; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int (* get_stats ) (int ,struct qed_iscsi_stats*) ;} ;
struct TYPE_3__ {int value; int desc; } ;


 int iscsi_conn_to_session (struct iscsi_cls_conn*) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_session_to_shost (int ) ;
 TYPE_2__* qedi_ops ;
 int strcpy (int ,char*) ;
 int stub1 (int ,struct qed_iscsi_stats*) ;

__attribute__((used)) static void qedi_conn_get_stats(struct iscsi_cls_conn *cls_conn,
    struct iscsi_stats *stats)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct qed_iscsi_stats iscsi_stats;
 struct Scsi_Host *shost;
 struct qedi_ctx *qedi;

 shost = iscsi_session_to_shost(iscsi_conn_to_session(cls_conn));
 qedi = iscsi_host_priv(shost);
 qedi_ops->get_stats(qedi->cdev, &iscsi_stats);

 conn->txdata_octets = iscsi_stats.iscsi_tx_bytes_cnt;
 conn->rxdata_octets = iscsi_stats.iscsi_rx_bytes_cnt;
 conn->dataout_pdus_cnt = (uint32_t)iscsi_stats.iscsi_tx_data_pdu_cnt;
 conn->datain_pdus_cnt = (uint32_t)iscsi_stats.iscsi_rx_data_pdu_cnt;
 conn->r2t_pdus_cnt = (uint32_t)iscsi_stats.iscsi_rx_r2t_pdu_cnt;

 stats->txdata_octets = conn->txdata_octets;
 stats->rxdata_octets = conn->rxdata_octets;
 stats->scsicmd_pdus = conn->scsicmd_pdus_cnt;
 stats->dataout_pdus = conn->dataout_pdus_cnt;
 stats->scsirsp_pdus = conn->scsirsp_pdus_cnt;
 stats->datain_pdus = conn->datain_pdus_cnt;
 stats->r2t_pdus = conn->r2t_pdus_cnt;
 stats->tmfcmd_pdus = conn->tmfcmd_pdus_cnt;
 stats->tmfrsp_pdus = conn->tmfrsp_pdus_cnt;
 stats->digest_err = 0;
 stats->timeout_err = 0;
 strcpy(stats->custom[0].desc, "eh_abort_cnt");
 stats->custom[0].value = conn->eh_abort_cnt;
 stats->custom_length = 1;
}
