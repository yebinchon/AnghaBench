
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* hi; void* lo; } ;
struct TYPE_9__ {void* sge_len; TYPE_2__ sge_addr; } ;
struct TYPE_10__ {TYPE_4__ cdb_sge; int hdr_second_dword; } ;
union iscsi_task_hdr {TYPE_5__ ext_cdb_cmd; } ;
typedef void* u32 ;
struct ystorm_iscsi_task_st_ctx {union iscsi_task_hdr pdu_hdr; } ;
struct TYPE_6__ {int hi; int lo; } ;
struct TYPE_8__ {int sge_len; TYPE_1__ sge_addr; } ;
struct scsi_initiator_cmd_params {TYPE_3__ extended_cdb_sge; } ;


 int ISCSI_EXT_CDB_CMD_HDR_CDB_SIZE ;
 int SET_FIELD (int ,int ,int ) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static
void init_initiator_rw_cdb_ystorm_context(struct ystorm_iscsi_task_st_ctx *ystc,
       struct scsi_initiator_cmd_params *cmd)
{
 union iscsi_task_hdr *ctx_pdu_hdr = &ystc->pdu_hdr;
 u32 val;

 if (!cmd->extended_cdb_sge.sge_len)
  return;

 SET_FIELD(ctx_pdu_hdr->ext_cdb_cmd.hdr_second_dword,
    ISCSI_EXT_CDB_CMD_HDR_CDB_SIZE,
    cmd->extended_cdb_sge.sge_len);
 val = cpu_to_le32(cmd->extended_cdb_sge.sge_addr.lo);
 ctx_pdu_hdr->ext_cdb_cmd.cdb_sge.sge_addr.lo = val;
 val = cpu_to_le32(cmd->extended_cdb_sge.sge_addr.hi);
 ctx_pdu_hdr->ext_cdb_cmd.cdb_sge.sge_addr.hi = val;
 val = cpu_to_le32(cmd->extended_cdb_sge.sge_len);
 ctx_pdu_hdr->ext_cdb_cmd.cdb_sge.sge_len = val;
}
