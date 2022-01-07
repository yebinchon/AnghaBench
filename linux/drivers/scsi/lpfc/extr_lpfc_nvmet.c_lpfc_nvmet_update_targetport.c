
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int fc_myDID; } ;
struct lpfc_hba {TYPE_1__* targetport; struct lpfc_vport* pport; } ;
struct TYPE_2__ {int port_id; } ;


 int KERN_INFO ;
 int LOG_NVME ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,TYPE_1__*,int ) ;

int
lpfc_nvmet_update_targetport(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport = phba->pport;

 if (!phba->targetport)
  return 0;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME,
    "6007 Update NVMET port x%px did x%x\n",
    phba->targetport, vport->fc_myDID);

 phba->targetport->port_id = vport->fc_myDID;
 return 0;
}
