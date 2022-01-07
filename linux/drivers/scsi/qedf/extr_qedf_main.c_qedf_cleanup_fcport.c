
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_rport {int * qedf; struct fc_rport_priv* rdata; int flags; } ;
struct qedf_ctx {int dbg_ctx; } ;
struct TYPE_2__ {int port_id; } ;
struct fc_rport_priv {int kref; TYPE_1__ ids; } ;


 int QEDF_INFO (int *,int ,char*,int ) ;
 int QEDF_LOG_CONN ;
 int QEDF_RPORT_SESSION_READY ;
 int fc_rport_destroy ;
 int kref_put (int *,int ) ;
 int qedf_flush_active_ios (struct qedf_rport*,int) ;
 int qedf_free_sq (struct qedf_ctx*,struct qedf_rport*) ;
 int qedf_upload_connection (struct qedf_ctx*,struct qedf_rport*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void qedf_cleanup_fcport(struct qedf_ctx *qedf,
 struct qedf_rport *fcport)
{
 struct fc_rport_priv *rdata = fcport->rdata;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_CONN, "Cleaning up portid=%06x.\n",
     fcport->rdata->ids.port_id);


 qedf_flush_active_ios(fcport, -1);

 if (test_and_clear_bit(QEDF_RPORT_SESSION_READY, &fcport->flags))
  qedf_upload_connection(qedf, fcport);
 qedf_free_sq(qedf, fcport);
 fcport->rdata = ((void*)0);
 fcport->qedf = ((void*)0);
 kref_put(&rdata->kref, fc_rport_destroy);
}
