
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ctx {int dbg_ctx; TYPE_1__* lport; } ;
struct fc_host_attrs {scalar_t__ npiv_vports_inuse; } ;
struct TYPE_2__ {int host; } ;


 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LOG_NPIV ;
 int msleep (int) ;
 struct fc_host_attrs* shost_to_fc_host (int ) ;

__attribute__((used)) static void qedf_wait_for_vport_destroy(struct qedf_ctx *qedf)
{
 struct fc_host_attrs *fc_host = shost_to_fc_host(qedf->lport->host);

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_NPIV,
     "Entered.\n");
 while (fc_host->npiv_vports_inuse > 0) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_NPIV,
      "Waiting for all vports to be reaped.\n");
  msleep(1000);
 }
}
