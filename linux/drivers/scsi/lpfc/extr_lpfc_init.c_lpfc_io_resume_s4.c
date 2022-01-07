
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {TYPE_1__ sli; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int LPFC_MBX_WAIT ;
 int LPFC_SLI_ACTIVE ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_online (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
lpfc_io_resume_s4(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;







 if (!(phba->sli.sli_flag & LPFC_SLI_ACTIVE)) {

  lpfc_offline_prep(phba, LPFC_MBX_WAIT);
  lpfc_offline(phba);
  lpfc_sli_brdrestart(phba);

  lpfc_online(phba);
 }
}
