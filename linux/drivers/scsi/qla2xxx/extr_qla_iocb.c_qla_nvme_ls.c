
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int rsp_dma; int rsp_len; int cmd_dma; int cmd_len; int timeout_sec; } ;
struct TYPE_13__ {TYPE_4__ nvme; } ;
struct srb_iocb {TYPE_5__ u; } ;
struct pt_ls4_request {int entry_count; int control_flags; int tx_dseg_count; int rx_dseg_count; TYPE_6__* dsd; int rx_byte_count; int tx_byte_count; int vp_index; void* nport_handle; void* timeout; int entry_type; } ;
struct TYPE_9__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {TYPE_3__* fcport; TYPE_1__ u; } ;
typedef TYPE_7__ srb_t ;
struct TYPE_14__ {int address; int length; } ;
struct TYPE_11__ {TYPE_2__* vha; int loop_id; } ;
struct TYPE_10__ {int vp_idx; } ;


 int CF_LS4_ORIGINATOR ;
 int CF_LS4_SHIFT ;
 int PT_LS4_REQUEST ;
 int QLA_SUCCESS ;
 void* cpu_to_le16 (int ) ;
 int put_unaligned_le64 (int ,int *) ;

__attribute__((used)) static int
qla_nvme_ls(srb_t *sp, struct pt_ls4_request *cmd_pkt)
{
 struct srb_iocb *nvme;
 int rval = QLA_SUCCESS;

 nvme = &sp->u.iocb_cmd;
 cmd_pkt->entry_type = PT_LS4_REQUEST;
 cmd_pkt->entry_count = 1;
 cmd_pkt->control_flags = CF_LS4_ORIGINATOR << CF_LS4_SHIFT;

 cmd_pkt->timeout = cpu_to_le16(nvme->u.nvme.timeout_sec);
 cmd_pkt->nport_handle = cpu_to_le16(sp->fcport->loop_id);
 cmd_pkt->vp_index = sp->fcport->vha->vp_idx;

 cmd_pkt->tx_dseg_count = 1;
 cmd_pkt->tx_byte_count = nvme->u.nvme.cmd_len;
 cmd_pkt->dsd[0].length = nvme->u.nvme.cmd_len;
 put_unaligned_le64(nvme->u.nvme.cmd_dma, &cmd_pkt->dsd[0].address);

 cmd_pkt->rx_dseg_count = 1;
 cmd_pkt->rx_byte_count = nvme->u.nvme.rsp_len;
 cmd_pkt->dsd[1].length = nvme->u.nvme.rsp_len;
 put_unaligned_le64(nvme->u.nvme.rsp_dma, &cmd_pkt->dsd[1].address);

 return rval;
}
