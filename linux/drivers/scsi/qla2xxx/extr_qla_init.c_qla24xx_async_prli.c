
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int flags; } ;
struct TYPE_17__ {TYPE_3__ logio; } ;
struct srb_iocb {TYPE_4__ u; int timeout; } ;
struct TYPE_14__ {int online; } ;
struct scsi_qla_host {int dpc_flags; TYPE_1__ flags; } ;
struct TYPE_15__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_19__ {char* name; int (* free ) (TYPE_6__*) ;int handle; int done; TYPE_2__ u; int type; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_18__ {int b24; } ;
struct TYPE_20__ {scalar_t__ fw_login_state; int flags; scalar_t__ fc4f_nvme; int login_retry; TYPE_5__ d_id; int loop_id; int port_name; scalar_t__ logout_completed; } ;
typedef TYPE_7__ fc_port_t ;


 scalar_t__ DSC_LS_PLOGI_PEND ;
 scalar_t__ DSC_LS_PRLI_PEND ;
 int FCF_ASYNC_SENT ;
 int FCF_LOGIN_NEEDED ;
 int GFP_KERNEL ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int RELOGIN_NEEDED ;
 int SRB_LOGIN_NVME_PRLI ;
 int SRB_PRLI_CMD ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ,int ,char*) ;
 int ql_dbg_disc ;
 int qla2x00_async_iocb_timeout ;
 int qla2x00_async_prli_sp_done ;
 scalar_t__ qla2x00_get_async_timeout (struct scsi_qla_host*) ;
 TYPE_6__* qla2x00_get_sp (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2x00_init_timer (TYPE_6__*,scalar_t__) ;
 int qla2x00_start_sp (TYPE_6__*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_6__*) ;

int
qla24xx_async_prli(struct scsi_qla_host *vha, fc_port_t *fcport)
{
 srb_t *sp;
 struct srb_iocb *lio;
 int rval = QLA_FUNCTION_FAILED;

 if (!vha->flags.online)
  return rval;

 if (fcport->fw_login_state == DSC_LS_PLOGI_PEND ||
     fcport->fw_login_state == DSC_LS_PRLI_PEND)
  return rval;

 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  return rval;

 fcport->flags |= FCF_ASYNC_SENT;
 fcport->logout_completed = 0;

 sp->type = SRB_PRLI_CMD;
 sp->name = "prli";

 lio = &sp->u.iocb_cmd;
 lio->timeout = qla2x00_async_iocb_timeout;
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);

 sp->done = qla2x00_async_prli_sp_done;
 lio->u.logio.flags = 0;

 if (fcport->fc4f_nvme)
  lio->u.logio.flags |= SRB_LOGIN_NVME_PRLI;

 ql_dbg(ql_dbg_disc, vha, 0x211b,
     "Async-prli - %8phC hdl=%x, loopid=%x portid=%06x retries=%d %s.\n",
     fcport->port_name, sp->handle, fcport->loop_id, fcport->d_id.b24,
     fcport->login_retry, fcport->fc4f_nvme ? "nvme" : "fc");

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS) {
  fcport->flags |= FCF_LOGIN_NEEDED;
  set_bit(RELOGIN_NEEDED, &vha->dpc_flags);
  goto done_free_sp;
 }

 return rval;

done_free_sp:
 sp->free(sp);
 fcport->flags &= ~FCF_ASYNC_SENT;
 return rval;
}
