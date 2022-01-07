
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qedf_rport {int rport_lock; int flags; int peers; int dev_type; struct fc_rport* rport; struct fc_rport_priv* rdata; struct qedf_ctx* qedf; } ;
struct qedf_ctx {int num_offloads; int hba_lock; int dbg_ctx; int fcports; } ;
struct TYPE_2__ {int roles; int port_id; } ;
struct fc_rport_priv {int flags; TYPE_1__ ids; int kref; int spp_type; struct fc_rport* rport; } ;
struct fc_rport_libfc_priv {int dummy; } ;
struct fc_rport {struct fc_rport_libfc_priv* dd_data; int port_id; } ;
struct fc_lport {int dummy; } ;
typedef enum fc_rport_event { ____Placeholder_fc_rport_event } fc_rport_event ;


 int FC_FID_DIR_SERV ;
 int FC_RPORT_ROLE_FCP_INITIATOR ;
 int FC_RPORT_ROLE_FCP_TARGET ;
 int FC_RP_FLAGS_RETRY ;
 int FC_TYPE_FCP ;
 int QEDF_ERR (int *,char*,int ) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 int QEDF_LOG_DISC ;
 int QEDF_MAX_SESSIONS ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_TYPE_DISK ;
 int QEDF_RPORT_TYPE_TAPE ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 int QEDF_WARN (int *,char*,...) ;





 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int kref_get (int *) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int qedf_alloc_sq (struct qedf_ctx*,struct qedf_rport*) ;
 int qedf_cleanup_fcport (struct qedf_ctx*,struct qedf_rport*) ;
 int qedf_offload_connection (struct qedf_ctx*,struct qedf_rport*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void qedf_rport_event_handler(struct fc_lport *lport,
    struct fc_rport_priv *rdata,
    enum fc_rport_event event)
{
 struct qedf_ctx *qedf = lport_priv(lport);
 struct fc_rport *rport = rdata->rport;
 struct fc_rport_libfc_priv *rp;
 struct qedf_rport *fcport;
 u32 port_id;
 int rval;
 unsigned long flags;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC, "event = %d, "
     "port_id = 0x%x\n", event, rdata->ids.port_id);

 switch (event) {
 case 129:
  if (!rport) {
   QEDF_WARN(&(qedf->dbg_ctx), "rport is NULL.\n");
   break;
  }

  rp = rport->dd_data;
  fcport = (struct qedf_rport *)&rp[1];
  fcport->qedf = qedf;

  if (atomic_read(&qedf->num_offloads) >= QEDF_MAX_SESSIONS) {
   QEDF_ERR(&(qedf->dbg_ctx), "Not offloading "
       "portid=0x%x as max number of offloaded sessions "
       "reached.\n", rdata->ids.port_id);
   return;
  }





  if (test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
   QEDF_WARN(&(qedf->dbg_ctx), "Session already "
       "offloaded, portid=0x%x.\n",
       rdata->ids.port_id);
   return;
  }

  if (rport->port_id == FC_FID_DIR_SERV) {






   QEDF_WARN(&(qedf->dbg_ctx), "rport struct does not "
       "exist for dir server port_id=%x\n",
       rdata->ids.port_id);
   break;
  }

  if (rdata->spp_type != FC_TYPE_FCP) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "Not offloading since spp type isn't FCP\n");
   break;
  }
  if (!(rdata->ids.roles & FC_RPORT_ROLE_FCP_TARGET)) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "Not FCP target so not offloading\n");
   break;
  }


  kref_get(&rdata->kref);
  fcport->rdata = rdata;
  fcport->rport = rport;

  rval = qedf_alloc_sq(qedf, fcport);
  if (rval) {
   qedf_cleanup_fcport(qedf, fcport);
   break;
  }


  if (rdata->flags & FC_RP_FLAGS_RETRY &&
      rdata->ids.roles & FC_RPORT_ROLE_FCP_TARGET &&
      !(rdata->ids.roles & FC_RPORT_ROLE_FCP_INITIATOR)) {
   fcport->dev_type = QEDF_RPORT_TYPE_TAPE;
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "portid=%06x is a TAPE device.\n",
       rdata->ids.port_id);
  } else {
   fcport->dev_type = QEDF_RPORT_TYPE_DISK;
  }

  rval = qedf_offload_connection(qedf, fcport);
  if (rval) {
   qedf_cleanup_fcport(qedf, fcport);
   break;
  }


  spin_lock_irqsave(&qedf->hba_lock, flags);
  list_add_rcu(&fcport->peers, &qedf->fcports);
  spin_unlock_irqrestore(&qedf->hba_lock, flags);





  set_bit(QEDF_RPORT_SESSION_READY, &fcport->flags);
  atomic_inc(&qedf->num_offloads);

  break;
 case 131:
 case 132:
 case 128:
  port_id = rdata->ids.port_id;
  if (port_id == FC_FID_DIR_SERV)
   break;

  if (!rport) {
   QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_DISC,
       "port_id=%x - rport notcreated Yet!!\n", port_id);
   break;
  }
  rp = rport->dd_data;




  fcport = (struct qedf_rport *)&rp[1];

  spin_lock_irqsave(&fcport->rport_lock, flags);

  if (test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags) &&
      !test_bit(QEDF_RPORT_UPLOADING_CONNECTION,
      &fcport->flags)) {
   set_bit(QEDF_RPORT_UPLOADING_CONNECTION,
    &fcport->flags);
   spin_unlock_irqrestore(&fcport->rport_lock, flags);
   qedf_cleanup_fcport(qedf, fcport);




   spin_lock_irqsave(&qedf->hba_lock, flags);
   list_del_rcu(&fcport->peers);
   spin_unlock_irqrestore(&qedf->hba_lock, flags);

   clear_bit(QEDF_RPORT_UPLOADING_CONNECTION,
       &fcport->flags);
   atomic_dec(&qedf->num_offloads);
  } else {
   spin_unlock_irqrestore(&fcport->rport_lock, flags);
  }
  break;

 case 130:
  break;
 }
}
