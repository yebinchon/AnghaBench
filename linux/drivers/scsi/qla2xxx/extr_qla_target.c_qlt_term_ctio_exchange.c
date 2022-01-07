
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_5__ {int exchange_addr; } ;
struct TYPE_6__ {TYPE_1__ isp24; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {int prot_op; } ;
struct qla_tgt_cmd {TYPE_3__ atio; TYPE_4__ se_cmd; int num_blks; int lba; } ;
struct qla_qpair {struct scsi_qla_host* vha; } ;
struct ctio7_from_24xx {int flags; } ;


 int OF_TERM_EXCH ;
 int cpu_to_le16 (int ) ;
 int prot_op_str (int ) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,TYPE_4__*,int ,int ,int ) ;
 int ql_dbg_tgt_dif ;
 int qlt_send_term_exchange (struct qla_qpair*,struct qla_tgt_cmd*,TYPE_3__*,int,int ) ;

__attribute__((used)) static int qlt_term_ctio_exchange(struct qla_qpair *qpair, void *ctio,
 struct qla_tgt_cmd *cmd, uint32_t status)
{
 int term = 0;
 struct scsi_qla_host *vha = qpair->vha;

 if (cmd->se_cmd.prot_op)
  ql_dbg(ql_dbg_tgt_dif, vha, 0xe013,
      "Term DIF cmd: lba[0x%llx|%lld] len[0x%x] "
      "se_cmd=%p tag[%x] op %#x/%s",
       cmd->lba, cmd->lba,
       cmd->num_blks, &cmd->se_cmd,
       cmd->atio.u.isp24.exchange_addr,
       cmd->se_cmd.prot_op,
       prot_op_str(cmd->se_cmd.prot_op));

 if (ctio != ((void*)0)) {
  struct ctio7_from_24xx *c = (struct ctio7_from_24xx *)ctio;

  term = !(c->flags &
      cpu_to_le16(OF_TERM_EXCH));
 } else
  term = 1;

 if (term)
  qlt_send_term_exchange(qpair, cmd, &cmd->atio, 1, 0);

 return term;
}
