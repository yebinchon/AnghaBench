
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct imm_ntfy_from_isp {int dummy; } ;
struct TYPE_13__ {struct imm_ntfy_from_isp* ntfy; } ;
struct TYPE_14__ {TYPE_1__ nack; } ;
struct TYPE_15__ {TYPE_2__ u; int timeout; } ;
struct TYPE_16__ {TYPE_3__ iocb_cmd; } ;
struct TYPE_17__ {int type; char* name; int (* free ) (TYPE_5__*) ;int handle; int done; TYPE_4__ u; } ;
typedef TYPE_5__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_18__ {int flags; int port_name; int fw_login_state; int deleted; } ;
typedef TYPE_6__ fc_port_t ;


 int DSC_LS_LOGO_PEND ;
 int DSC_LS_PLOGI_PEND ;
 int DSC_LS_PRLI_PEND ;
 int FCF_ASYNC_SENT ;
 int GFP_ATOMIC ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;



 int ql_dbg (int ,int *,int,char*,char*,int ,int ,char*) ;
 int ql_dbg_disc ;
 int qla2x00_async_iocb_timeout ;
 int qla2x00_async_nack_sp_done ;
 scalar_t__ qla2x00_get_async_timeout (int *) ;
 TYPE_5__* qla2x00_get_sp (int *,TYPE_6__*,int ) ;
 int qla2x00_init_timer (TYPE_5__*,scalar_t__) ;
 int qla2x00_start_sp (TYPE_5__*) ;
 int stub1 (TYPE_5__*) ;

int qla24xx_async_notify_ack(scsi_qla_host_t *vha, fc_port_t *fcport,
 struct imm_ntfy_from_isp *ntfy, int type)
{
 int rval = QLA_FUNCTION_FAILED;
 srb_t *sp;
 char *c = ((void*)0);

 fcport->flags |= FCF_ASYNC_SENT;
 switch (type) {
 case 129:
  fcport->fw_login_state = DSC_LS_PLOGI_PEND;
  c = "PLOGI";
  break;
 case 128:
  fcport->fw_login_state = DSC_LS_PRLI_PEND;
  fcport->deleted = 0;
  c = "PRLI";
  break;
 case 130:
  fcport->fw_login_state = DSC_LS_LOGO_PEND;
  c = "LOGO";
  break;
 }

 sp = qla2x00_get_sp(vha, fcport, GFP_ATOMIC);
 if (!sp)
  goto done;

 sp->type = type;
 sp->name = "nack";

 sp->u.iocb_cmd.timeout = qla2x00_async_iocb_timeout;
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha)+2);

 sp->u.iocb_cmd.u.nack.ntfy = ntfy;
 sp->done = qla2x00_async_nack_sp_done;

 ql_dbg(ql_dbg_disc, vha, 0x20f4,
     "Async-%s %8phC hndl %x %s\n",
     sp->name, fcport->port_name, sp->handle, c);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 return rval;

done_free_sp:
 sp->free(sp);
done:
 fcport->flags &= ~FCF_ASYNC_SENT;
 return rval;
}
