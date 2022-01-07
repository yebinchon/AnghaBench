
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef void* uint32_t ;
typedef void* uint16_t ;
struct TYPE_19__ {int data; void* lun; void* flags; int comp; } ;
struct TYPE_20__ {TYPE_4__ tmf; } ;
struct srb_iocb {TYPE_5__ u; int timeout; } ;
struct scsi_qla_host {TYPE_14__* hw; int dpc_flags; } ;
struct TYPE_16__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_21__ {char* name; int (* free ) (TYPE_6__*) ;int handle; int done; int type; TYPE_1__ u; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_17__ {int al_pa; int area; int domain; } ;
struct TYPE_18__ {TYPE_2__ b; } ;
struct TYPE_22__ {int flags; int loop_id; TYPE_3__ d_id; struct scsi_qla_host* vha; } ;
typedef TYPE_7__ fc_port_t ;
struct TYPE_15__ {int base_qpair; } ;


 int FCF_ASYNC_SENT ;
 int GFP_KERNEL ;
 int IS_QLAFX00 (TYPE_14__*) ;
 int MK_SYNC_ID ;
 int MK_SYNC_ID_LUN ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_TM_CMD ;
 void* TCF_LUN_RESET ;
 int UNLOADING ;
 int init_completion (int *) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ,int ) ;
 int ql_dbg_taskm ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int) ;
 int ql_log_warn ;
 int qla2x00_get_async_timeout (struct scsi_qla_host*) ;
 TYPE_6__* qla2x00_get_sp (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2x00_init_timer (TYPE_6__*,int ) ;
 int qla2x00_marker (struct scsi_qla_host*,int ,int ,void*,int ) ;
 int qla2x00_start_sp (TYPE_6__*) ;
 int qla2x00_tmf_iocb_timeout ;
 int qla2x00_tmf_sp_done ;
 int stub1 (TYPE_6__*) ;
 int test_bit (int ,int *) ;
 int wait_for_completion (int *) ;

int
qla2x00_async_tm_cmd(fc_port_t *fcport, uint32_t flags, uint32_t lun,
 uint32_t tag)
{
 struct scsi_qla_host *vha = fcport->vha;
 struct srb_iocb *tm_iocb;
 srb_t *sp;
 int rval = QLA_FUNCTION_FAILED;

 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 tm_iocb = &sp->u.iocb_cmd;
 sp->type = SRB_TM_CMD;
 sp->name = "tmf";

 tm_iocb->timeout = qla2x00_tmf_iocb_timeout;
 init_completion(&tm_iocb->u.tmf.comp);
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha));

 tm_iocb->u.tmf.flags = flags;
 tm_iocb->u.tmf.lun = lun;
 tm_iocb->u.tmf.data = tag;
 sp->done = qla2x00_tmf_sp_done;

 ql_dbg(ql_dbg_taskm, vha, 0x802f,
     "Async-tmf hdl=%x loop-id=%x portid=%02x%02x%02x.\n",
     sp->handle, fcport->loop_id, fcport->d_id.b.domain,
     fcport->d_id.b.area, fcport->d_id.b.al_pa);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;
 wait_for_completion(&tm_iocb->u.tmf.comp);

 rval = tm_iocb->u.tmf.data;

 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x8030,
      "TM IOCB failed (%x).\n", rval);
 }

 if (!test_bit(UNLOADING, &vha->dpc_flags) && !IS_QLAFX00(vha->hw)) {
  flags = tm_iocb->u.tmf.flags;
  lun = (uint16_t)tm_iocb->u.tmf.lun;


  qla2x00_marker(vha, vha->hw->base_qpair,
      fcport->loop_id, lun,
      flags == TCF_LUN_RESET ? MK_SYNC_ID_LUN : MK_SYNC_ID);
 }

done_free_sp:
 sp->free(sp);
 fcport->flags &= ~FCF_ASYNC_SENT;
done:
 return rval;
}
