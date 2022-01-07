
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_target_port {struct lpfc_nvmet_tgtport* private; } ;
struct lpfc_nvmet_tgtport {int tport_unreg_cmp; TYPE_1__* phba; } ;
struct TYPE_2__ {scalar_t__ targetport; } ;


 int complete (int ) ;

__attribute__((used)) static void
lpfc_nvmet_targetport_delete(struct nvmet_fc_target_port *targetport)
{
 struct lpfc_nvmet_tgtport *tport = targetport->private;


 if (tport->phba->targetport)
  complete(tport->tport_unreg_cmp);
}
