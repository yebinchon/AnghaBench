
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct qedf_rport* u32 ;
struct qedf_rport {int flags; struct fc_rport_priv* rdata; TYPE_2__* qedf; int rport_lock; } ;
struct TYPE_4__ {struct qedf_rport* port_id; } ;
struct fc_rport_priv {scalar_t__ rp_state; int kref; TYPE_1__ ids; } ;
struct TYPE_6__ {int disc_mutex; } ;
struct fc_lport {TYPE_3__ disc; } ;
struct TYPE_5__ {int dbg_ctx; struct fc_lport* lport; } ;


 int QEDF_ERR (int *,char*,...) ;
 int QEDF_RPORT_IN_RESET ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 scalar_t__ RPORT_ST_READY ;
 int clear_bit (int ,int *) ;
 struct fc_rport_priv* fc_rport_create (struct fc_lport*,struct qedf_rport*) ;
 int fc_rport_destroy ;
 int fc_rport_login (struct fc_rport_priv*) ;
 int fc_rport_logoff (struct fc_rport_priv*) ;
 int kref_get_unless_zero (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void qedf_restart_rport(struct qedf_rport *fcport)
{
 struct fc_lport *lport;
 struct fc_rport_priv *rdata;
 u32 port_id;
 unsigned long flags;

 if (!fcport) {
  QEDF_ERR(((void*)0), "fcport is NULL.\n");
  return;
 }

 spin_lock_irqsave(&fcport->rport_lock, flags);
 if (test_bit(QEDF_RPORT_IN_RESET, &fcport->flags) ||
     !test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags) ||
     test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags)) {
  QEDF_ERR(&(fcport->qedf->dbg_ctx), "fcport %p already in reset or not offloaded.\n",
      fcport);
  spin_unlock_irqrestore(&fcport->rport_lock, flags);
  return;
 }


 set_bit(QEDF_RPORT_IN_RESET, &fcport->flags);
 spin_unlock_irqrestore(&fcport->rport_lock, flags);

 rdata = fcport->rdata;
 if (rdata && !kref_get_unless_zero(&rdata->kref)) {
  fcport->rdata = ((void*)0);
  rdata = ((void*)0);
 }

 if (rdata && rdata->rp_state == RPORT_ST_READY) {
  lport = fcport->qedf->lport;
  port_id = rdata->ids.port_id;
  QEDF_ERR(&(fcport->qedf->dbg_ctx),
      "LOGO port_id=%x.\n", port_id);
  fc_rport_logoff(rdata);
  kref_put(&rdata->kref, fc_rport_destroy);
  mutex_lock(&lport->disc.disc_mutex);

  rdata = fc_rport_create(lport, port_id);
  if (rdata) {
   mutex_unlock(&lport->disc.disc_mutex);
   fc_rport_login(rdata);
   fcport->rdata = rdata;
  } else {
   mutex_unlock(&lport->disc.disc_mutex);
   fcport->rdata = ((void*)0);
  }
 }
 clear_bit(QEDF_RPORT_IN_RESET, &fcport->flags);
}
