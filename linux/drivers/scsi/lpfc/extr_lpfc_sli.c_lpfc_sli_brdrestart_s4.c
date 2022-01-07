
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_sli {int stats_start; int lnk_stat_offsets; int sli_flag; } ;
struct lpfc_hba {int hba_flag; int pcidev; int hbalock; int link_state; TYPE_1__* pport; struct lpfc_sli sli; } ;
struct TYPE_2__ {scalar_t__ stopped; int port_state; } ;


 int HBA_AER_ENABLED ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_HBA_ERROR ;
 int LPFC_INIT_START ;
 int ktime_get_seconds () ;
 int lpfc_hba_down_post (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ) ;
 int lpfc_sli4_brdreset (struct lpfc_hba*) ;
 int lpfc_sli4_queue_destroy (struct lpfc_hba*) ;
 int memset (int *,int ,int) ;
 int pci_disable_pcie_error_reporting (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
lpfc_sli_brdrestart_s4(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;
 uint32_t hba_aer_enabled;
 int rc;


 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "0296 Restart HBA Data: x%x x%x\n",
   phba->pport->port_state, psli->sli_flag);


 hba_aer_enabled = phba->hba_flag & HBA_AER_ENABLED;

 rc = lpfc_sli4_brdreset(phba);
 if (rc) {
  phba->link_state = LPFC_HBA_ERROR;
  goto hba_down_queue;
 }

 spin_lock_irq(&phba->hbalock);
 phba->pport->stopped = 0;
 phba->link_state = LPFC_INIT_START;
 phba->hba_flag = 0;
 spin_unlock_irq(&phba->hbalock);

 memset(&psli->lnk_stat_offsets, 0, sizeof(psli->lnk_stat_offsets));
 psli->stats_start = ktime_get_seconds();


 if (hba_aer_enabled)
  pci_disable_pcie_error_reporting(phba->pcidev);

hba_down_queue:
 lpfc_hba_down_post(phba);
 lpfc_sli4_queue_destroy(phba);

 return rc;
}
