
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcm_loop_tpg {int tl_transport_status; } ;
struct tcm_loop_hba {struct tcm_loop_tpg* tl_hba_tpgs; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {size_t id; int host; } ;


 int FAILED ;
 int SUCCESS ;
 int TCM_TRANSPORT_ONLINE ;
 int pr_err (char*) ;
 scalar_t__ shost_priv (int ) ;

__attribute__((used)) static int tcm_loop_target_reset(struct scsi_cmnd *sc)
{
 struct tcm_loop_hba *tl_hba;
 struct tcm_loop_tpg *tl_tpg;




 tl_hba = *(struct tcm_loop_hba **)shost_priv(sc->device->host);
 if (!tl_hba) {
  pr_err("Unable to perform device reset without active I_T Nexus\n");
  return FAILED;
 }



 tl_tpg = &tl_hba->tl_hba_tpgs[sc->device->id];
 if (tl_tpg) {
  tl_tpg->tl_transport_status = TCM_TRANSPORT_ONLINE;
  return SUCCESS;
 }
 return FAILED;
}
