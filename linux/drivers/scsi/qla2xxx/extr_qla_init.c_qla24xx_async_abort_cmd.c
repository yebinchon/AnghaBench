
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ comp_status; int comp; int req_que_no; int cmd_hndl; } ;
struct TYPE_16__ {TYPE_3__ abt; } ;
struct srb_iocb {TYPE_4__ u; int timeout; } ;
struct TYPE_13__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_17__ {char* name; int (* free ) (TYPE_5__*) ;int type; int handle; int done; TYPE_9__* qpair; int flags; TYPE_1__ u; int fcport; int * vha; } ;
typedef TYPE_5__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_18__ {TYPE_2__* req; } ;
struct TYPE_14__ {int id; } ;


 scalar_t__ CS_COMPLETE ;
 int GFP_ATOMIC ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_ABT_CMD ;
 int SRB_WAKEUP_ON_COMP ;
 int cpu_to_le16 (int ) ;
 int init_completion (int *) ;
 int ql_dbg (int ,int *,int,char*,int ,int ) ;
 int ql_dbg_async ;
 int qla24xx_abort_iocb_timeout ;
 int qla24xx_abort_sp_done ;
 int qla2x00_init_timer (TYPE_5__*,int) ;
 int qla2x00_start_sp (TYPE_5__*) ;
 TYPE_5__* qla2xxx_get_qpair_sp (int *,TYPE_9__*,int ,int ) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_5__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int qla24xx_async_abort_cmd(srb_t *cmd_sp, bool wait)
{
 scsi_qla_host_t *vha = cmd_sp->vha;
 struct srb_iocb *abt_iocb;
 srb_t *sp;
 int rval = QLA_FUNCTION_FAILED;

 sp = qla2xxx_get_qpair_sp(cmd_sp->vha, cmd_sp->qpair, cmd_sp->fcport,
      GFP_ATOMIC);
 if (!sp)
  return rval;

 abt_iocb = &sp->u.iocb_cmd;
 sp->type = SRB_ABT_CMD;
 sp->name = "abort";
 sp->qpair = cmd_sp->qpair;
 if (wait)
  sp->flags = SRB_WAKEUP_ON_COMP;

 abt_iocb->timeout = qla24xx_abort_iocb_timeout;
 init_completion(&abt_iocb->u.abt.comp);

 qla2x00_init_timer(sp, 42);

 abt_iocb->u.abt.cmd_hndl = cmd_sp->handle;
 abt_iocb->u.abt.req_que_no = cpu_to_le16(cmd_sp->qpair->req->id);

 sp->done = qla24xx_abort_sp_done;

 ql_dbg(ql_dbg_async, vha, 0x507c,
        "Abort command issued - hdl=%x, type=%x\n", cmd_sp->handle,
        cmd_sp->type);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS) {
  sp->free(sp);
  return rval;
 }

 if (wait) {
  wait_for_completion(&abt_iocb->u.abt.comp);
  rval = abt_iocb->u.abt.comp_status == CS_COMPLETE ?
   QLA_SUCCESS : QLA_FUNCTION_FAILED;
  sp->free(sp);
 }

 return rval;
}
