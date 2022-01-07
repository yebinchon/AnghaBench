
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct lpfc_sli {int sli_flag; } ;
struct TYPE_4__ {scalar_t__ fcf_flag; } ;
struct lpfc_hba {int hba_flag; int pcidev; int hbalock; TYPE_2__ fcf; TYPE_1__* pport; scalar_t__ link_events; scalar_t__ fc_eventTag; struct lpfc_sli sli; } ;
struct TYPE_3__ {scalar_t__ fc_prevDID; scalar_t__ fc_myDID; int port_state; } ;


 int EIO ;
 int HBA_FW_DUMP_OP ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LOG_SLI ;
 int LPFC_PROCESS_LA ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int lpfc_pci_function_reset (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 scalar_t__ pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_sli4_brdreset(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;
 uint16_t cfg_value;
 int rc = 0;


 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "0295 Reset HBA Data: x%x x%x x%x\n",
   phba->pport->port_state, psli->sli_flag,
   phba->hba_flag);


 phba->fc_eventTag = 0;
 phba->link_events = 0;
 phba->pport->fc_myDID = 0;
 phba->pport->fc_prevDID = 0;

 spin_lock_irq(&phba->hbalock);
 psli->sli_flag &= ~(LPFC_PROCESS_LA);
 phba->fcf.fcf_flag = 0;
 spin_unlock_irq(&phba->hbalock);


 if (phba->hba_flag & HBA_FW_DUMP_OP) {
  phba->hba_flag &= ~HBA_FW_DUMP_OP;
  return rc;
 }


 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "0389 Performing PCI function reset!\n");


 if (pci_read_config_word(phba->pcidev, PCI_COMMAND, &cfg_value)) {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "3205 PCI read Config failed\n");
  return -EIO;
 }

 pci_write_config_word(phba->pcidev, PCI_COMMAND, (cfg_value &
         ~(PCI_COMMAND_PARITY | PCI_COMMAND_SERR)));


 rc = lpfc_pci_function_reset(phba);


 pci_write_config_word(phba->pcidev, PCI_COMMAND, cfg_value);

 return rc;
}
