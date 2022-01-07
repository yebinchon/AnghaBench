
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_local_port {struct lpfc_nvme_lport* private; } ;
struct lpfc_nvme_lport {int lport_unreg_cmp; TYPE_1__* vport; } ;
struct TYPE_2__ {scalar_t__ localport; } ;


 int KERN_INFO ;
 int LOG_NVME ;
 int complete (int ) ;
 int lpfc_printf_vlog (TYPE_1__*,int ,int ,char*,struct lpfc_nvme_lport*) ;

__attribute__((used)) static void
lpfc_nvme_localport_delete(struct nvme_fc_local_port *localport)
{
 struct lpfc_nvme_lport *lport = localport->private;

 lpfc_printf_vlog(lport->vport, KERN_INFO, LOG_NVME,
    "6173 localport x%px delete complete\n",
    lport);


 if (lport->vport->localport)
  complete(lport->lport_unreg_cmp);
}
