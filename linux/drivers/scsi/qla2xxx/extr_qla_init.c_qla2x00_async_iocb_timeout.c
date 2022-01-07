
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int flags; int * data; } ;
struct TYPE_16__ {TYPE_3__ logio; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct TYPE_13__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_19__ {int type; int (* done ) (TYPE_7__*,int ) ;TYPE_6__* qpair; int handle; int name; TYPE_1__ u; TYPE_8__* fcport; } ;
typedef TYPE_7__ srb_t ;
struct TYPE_14__ {int b24; } ;
struct TYPE_20__ {int flags; int port_name; TYPE_2__ d_id; int vha; } ;
typedef TYPE_8__ fc_port_t ;
struct TYPE_18__ {int qp_lock_ptr; TYPE_5__* req; } ;
struct TYPE_17__ {int num_outstanding_cmds; TYPE_7__** outstanding_cmds; } ;


 int FCF_ASYNC_ACTIVE ;
 int FCF_ASYNC_SENT ;
 int MBS_COMMAND_ERROR ;
 int QLA_FUNCTION_TIMEOUT ;
 int QLA_LOGIO_LOGIN_RETRIED ;



 int SRB_LOGIN_RETRIED ;





 int WARN_ON_ONCE (int) ;
 int pr_info (char*,int ,int ) ;
 int ql_dbg (int ,int ,int,char*,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla24xx_async_abort_cmd (TYPE_7__*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_7__*,int ) ;
 int stub2 (TYPE_7__*,int ) ;
 int stub3 (TYPE_7__*,int ) ;

void
qla2x00_async_iocb_timeout(void *data)
{
 srb_t *sp = data;
 fc_port_t *fcport = sp->fcport;
 struct srb_iocb *lio = &sp->u.iocb_cmd;
 int rc, h;
 unsigned long flags;

 if (fcport) {
  ql_dbg(ql_dbg_disc, fcport->vha, 0x2071,
      "Async-%s timeout - hdl=%x portid=%06x %8phC.\n",
      sp->name, sp->handle, fcport->d_id.b24, fcport->port_name);

  fcport->flags &= ~(FCF_ASYNC_SENT | FCF_ASYNC_ACTIVE);
 } else {
  pr_info("Async-%s timeout - hdl=%x.\n",
      sp->name, sp->handle);
 }

 switch (sp->type) {
 case 133:
  rc = qla24xx_async_abort_cmd(sp, 0);
  if (rc) {

   lio->u.logio.data[0] = MBS_COMMAND_ERROR;
   lio->u.logio.data[1] =
    lio->u.logio.flags & SRB_LOGIN_RETRIED ?
    QLA_LOGIO_LOGIN_RETRIED : 0;
   spin_lock_irqsave(sp->qpair->qp_lock_ptr, flags);
   for (h = 1; h < sp->qpair->req->num_outstanding_cmds;
       h++) {
    if (sp->qpair->req->outstanding_cmds[h] ==
        sp) {
     sp->qpair->req->outstanding_cmds[h] =
         ((void*)0);
     break;
    }
   }
   spin_unlock_irqrestore(sp->qpair->qp_lock_ptr, flags);
   sp->done(sp, QLA_FUNCTION_TIMEOUT);
  }
  break;
 case 132:
 case 134:
 case 131:
 case 129:
 case 128:
 case 130:
 case 135:
  rc = qla24xx_async_abort_cmd(sp, 0);
  if (rc) {
   spin_lock_irqsave(sp->qpair->qp_lock_ptr, flags);
   for (h = 1; h < sp->qpair->req->num_outstanding_cmds;
       h++) {
    if (sp->qpair->req->outstanding_cmds[h] ==
        sp) {
     sp->qpair->req->outstanding_cmds[h] =
         ((void*)0);
     break;
    }
   }
   spin_unlock_irqrestore(sp->qpair->qp_lock_ptr, flags);
   sp->done(sp, QLA_FUNCTION_TIMEOUT);
  }
  break;
 default:
  WARN_ON_ONCE(1);
  sp->done(sp, QLA_FUNCTION_TIMEOUT);
  break;
 }
}
