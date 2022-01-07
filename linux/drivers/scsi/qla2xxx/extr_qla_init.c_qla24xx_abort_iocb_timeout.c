
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_9__ {int comp_status; } ;
struct TYPE_10__ {TYPE_3__ abt; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct qla_qpair {int qp_lock_ptr; TYPE_2__* req; } ;
struct TYPE_7__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_11__ {int (* done ) (TYPE_5__*,int ) ;struct qla_qpair* qpair; TYPE_1__ u; } ;
typedef TYPE_5__ srb_t ;
struct TYPE_8__ {size_t num_outstanding_cmds; TYPE_5__** outstanding_cmds; } ;


 int CS_TIMEOUT ;
 int QLA_OS_TIMER_EXPIRED ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_5__*,int ) ;

__attribute__((used)) static void qla24xx_abort_iocb_timeout(void *data)
{
 srb_t *sp = data;
 struct srb_iocb *abt = &sp->u.iocb_cmd;
 struct qla_qpair *qpair = sp->qpair;
 u32 handle;
 unsigned long flags;

 spin_lock_irqsave(qpair->qp_lock_ptr, flags);
 for (handle = 1; handle < qpair->req->num_outstanding_cmds; handle++) {

  if (qpair->req->outstanding_cmds[handle] == sp) {
   qpair->req->outstanding_cmds[handle] = ((void*)0);
   break;
  }
 }
 spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);

 abt->u.abt.comp_status = CS_TIMEOUT;
 sp->done(sp, QLA_OS_TIMER_EXPIRED);
}
