
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_qla_host {int dummy; } ;
struct qla_tgt_prm {int* sense_buffer; struct qla_tgt_cmd* cmd; } ;
struct TYPE_4__ {int exchange_addr; } ;
struct TYPE_5__ {TYPE_1__ isp24; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct qla_tgt_cmd {int cdb; TYPE_3__ atio; int se_cmd; int num_blks; int lba; struct scsi_qla_host* vha; } ;


 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int *,int ) ;
 int ql_dbg_tgt_dif ;
 int ql_dump_buffer (int ,struct scsi_qla_host*,int,int ,int) ;

__attribute__((used)) static void qlt_print_dif_err(struct qla_tgt_prm *prm)
{
 struct qla_tgt_cmd *cmd;
 struct scsi_qla_host *vha;


 if (prm->sense_buffer && (prm->sense_buffer[12] == 0x10)) {
  cmd = prm->cmd;
  vha = cmd->vha;

  switch (prm->sense_buffer[13]) {
  case 1:
   ql_dbg(ql_dbg_tgt_dif, vha, 0xe00b,
       "BE detected Guard TAG ERR: lba[0x%llx|%lld] len[0x%x] "
       "se_cmd=%p tag[%x]",
       cmd->lba, cmd->lba, cmd->num_blks, &cmd->se_cmd,
       cmd->atio.u.isp24.exchange_addr);
   break;
  case 2:
   ql_dbg(ql_dbg_tgt_dif, vha, 0xe00c,
       "BE detected APP TAG ERR: lba[0x%llx|%lld] len[0x%x] "
       "se_cmd=%p tag[%x]",
       cmd->lba, cmd->lba, cmd->num_blks, &cmd->se_cmd,
       cmd->atio.u.isp24.exchange_addr);
   break;
  case 3:
   ql_dbg(ql_dbg_tgt_dif, vha, 0xe00f,
       "BE detected REF TAG ERR: lba[0x%llx|%lld] len[0x%x] "
       "se_cmd=%p tag[%x]",
       cmd->lba, cmd->lba, cmd->num_blks, &cmd->se_cmd,
       cmd->atio.u.isp24.exchange_addr);
   break;
  default:
   ql_dbg(ql_dbg_tgt_dif, vha, 0xe010,
       "BE detected Dif ERR: lba[%llx|%lld] len[%x] "
       "se_cmd=%p tag[%x]",
       cmd->lba, cmd->lba, cmd->num_blks, &cmd->se_cmd,
       cmd->atio.u.isp24.exchange_addr);
   break;
  }
  ql_dump_buffer(ql_dbg_tgt_dif, vha, 0xe011, cmd->cdb, 16);
 }
}
