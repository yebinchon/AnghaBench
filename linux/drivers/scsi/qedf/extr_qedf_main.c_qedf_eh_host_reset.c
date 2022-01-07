
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct qedf_ctx {int dbg_ctx; int flags; int link_state; } ;
struct fc_lport {int dummy; } ;
struct TYPE_2__ {int host; } ;


 int FAILED ;
 int QEDF_ERR (int *,char*) ;
 scalar_t__ QEDF_LINK_DOWN ;
 int QEDF_UNLOADING ;
 int SUCCESS ;
 scalar_t__ atomic_read (int *) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int qedf_ctx_soft_reset (struct fc_lport*) ;
 struct fc_lport* shost_priv (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qedf_eh_host_reset(struct scsi_cmnd *sc_cmd)
{
 struct fc_lport *lport;
 struct qedf_ctx *qedf;

 lport = shost_priv(sc_cmd->device->host);
 qedf = lport_priv(lport);

 if (atomic_read(&qedf->link_state) == QEDF_LINK_DOWN ||
     test_bit(QEDF_UNLOADING, &qedf->flags))
  return FAILED;

 QEDF_ERR(&(qedf->dbg_ctx), "HOST RESET Issued...");

 qedf_ctx_soft_reset(lport);

 return SUCCESS;
}
