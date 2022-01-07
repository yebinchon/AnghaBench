
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_stats {int custom_length; TYPE_1__* custom; scalar_t__ timeout_err; scalar_t__ digest_err; int tmfrsp_pdus; int tmfcmd_pdus; int r2t_pdus; int datain_pdus; int scsirsp_pdus; int dataout_pdus; int scsicmd_pdus; int rxdata_octets; int txdata_octets; } ;
struct iscsi_conn {int eh_abort_cnt; int tmfrsp_pdus_cnt; int tmfcmd_pdus_cnt; int r2t_pdus_cnt; int datain_pdus_cnt; int scsirsp_pdus_cnt; int dataout_pdus_cnt; int scsicmd_pdus_cnt; int rxdata_octets; int txdata_octets; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_2__ {int value; int desc; } ;


 int strcpy (int ,char*) ;

void cxgbi_get_conn_stats(struct iscsi_cls_conn *cls_conn,
    struct iscsi_stats *stats)
{
 struct iscsi_conn *conn = cls_conn->dd_data;

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
 stats->custom_length = 1;
 strcpy(stats->custom[0].desc, "eh_abort_cnt");
 stats->custom[0].value = conn->eh_abort_cnt;
}
