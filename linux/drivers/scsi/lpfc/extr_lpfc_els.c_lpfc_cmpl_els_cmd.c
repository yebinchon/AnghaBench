
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct TYPE_4__ {int remoteID; } ;
struct TYPE_5__ {int * ulpWord; TYPE_1__ elsreq64; } ;
struct TYPE_6__ {int ulpTimeout; TYPE_2__ un; int ulpStatus; int ulpIoTag; } ;
struct lpfc_iocbq {TYPE_3__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
typedef TYPE_3__ IOCB_t ;


 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_chk_latt (struct lpfc_vport*) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
lpfc_cmpl_els_cmd(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
    struct lpfc_iocbq *rspiocb)
{
 struct lpfc_vport *vport = cmdiocb->vport;
 IOCB_t *irsp;

 irsp = &rspiocb->iocb;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "ELS cmd cmpl:    status:x%x/x%x did:x%x",
  irsp->ulpStatus, irsp->un.ulpWord[4],
  irsp->un.elsreq64.remoteID);

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0106 ELS cmd tag x%x completes Data: x%x x%x x%x\n",
    irsp->ulpIoTag, irsp->ulpStatus,
    irsp->un.ulpWord[4], irsp->ulpTimeout);

 lpfc_els_chk_latt(vport);
 lpfc_els_free_iocb(phba, cmdiocb);
 return;
}
