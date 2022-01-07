
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nvmet_fc_target_port {struct lpfc_nvmet_tgtport* private; } ;
struct lpfc_nvmet_tgtport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int pport; } ;


 int KERN_ERR ;
 int LOG_NVME ;
 scalar_t__ lpfc_issue_els_rscn (int ,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,char*) ;

__attribute__((used)) static void
lpfc_nvmet_discovery_event(struct nvmet_fc_target_port *tgtport)
{
 struct lpfc_nvmet_tgtport *tgtp;
 struct lpfc_hba *phba;
 uint32_t rc;

 tgtp = tgtport->private;
 phba = tgtp->phba;

 rc = lpfc_issue_els_rscn(phba->pport, 0);
 lpfc_printf_log(phba, KERN_ERR, LOG_NVME,
   "6420 NVMET subsystem change: Notification %s\n",
   (rc) ? "Failed" : "Sent");
}
