
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


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct tsk_mgmt_entry {int entry_count; int lun; int vp_index; int * port_id; int control_flags; void* timeout; void* nport_handle; int handle; int entry_type; } ;
struct TYPE_10__ {scalar_t__ flags; int lun; } ;
struct TYPE_11__ {TYPE_2__ tmf; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int id; } ;
struct qla_hw_data {int r_a_tov; } ;
struct TYPE_12__ {int domain; int area; int al_pa; } ;
struct TYPE_13__ {TYPE_4__ b; } ;
struct fc_port {int loop_id; TYPE_7__* vha; TYPE_5__ d_id; } ;
struct TYPE_9__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_14__ {TYPE_1__ u; struct fc_port* fcport; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_15__ {int vp_idx; struct req_que* req; struct qla_hw_data* hw; } ;
typedef TYPE_7__ scsi_qla_host_t ;


 int MAKE_HANDLE (int ,int ) ;
 scalar_t__ TCF_LUN_RESET ;
 int TSK_MGMT_IOCB_TYPE ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (scalar_t__) ;
 int host_to_fcp_swap (int *,int) ;
 int int_to_scsilun (int ,int *) ;

__attribute__((used)) static void
qla24xx_tm_iocb(srb_t *sp, struct tsk_mgmt_entry *tsk)
{
 uint32_t flags;
 uint64_t lun;
 struct fc_port *fcport = sp->fcport;
 scsi_qla_host_t *vha = fcport->vha;
 struct qla_hw_data *ha = vha->hw;
 struct srb_iocb *iocb = &sp->u.iocb_cmd;
 struct req_que *req = vha->req;

 flags = iocb->u.tmf.flags;
 lun = iocb->u.tmf.lun;

 tsk->entry_type = TSK_MGMT_IOCB_TYPE;
 tsk->entry_count = 1;
 tsk->handle = MAKE_HANDLE(req->id, tsk->handle);
 tsk->nport_handle = cpu_to_le16(fcport->loop_id);
 tsk->timeout = cpu_to_le16(ha->r_a_tov / 10 * 2);
 tsk->control_flags = cpu_to_le32(flags);
 tsk->port_id[0] = fcport->d_id.b.al_pa;
 tsk->port_id[1] = fcport->d_id.b.area;
 tsk->port_id[2] = fcport->d_id.b.domain;
 tsk->vp_index = fcport->vha->vp_idx;

 if (flags == TCF_LUN_RESET) {
  int_to_scsilun(lun, &tsk->lun);
  host_to_fcp_swap((uint8_t *)&tsk->lun,
   sizeof(tsk->lun));
 }
}
