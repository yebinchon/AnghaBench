
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int sli_flag; } ;
struct lpfc_hba {int cfg_sli_mode; int cfg_aer_support; int hba_flag; int sli_rev; int sli3_options; int max_vpi; int* vpi_ids; int link_state; int hbalock; TYPE_1__ sli; int * vpi_bmask; int iocb_rsp_size; int iocb_cmd_size; int pcidev; scalar_t__ fcp_embed_io; int cfg_enable_npiv; } ;


 int BITS_PER_LONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HBA_AER_ENABLED ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LOG_VPORT ;
 int LPFC_HBA_ERROR ;
 int LPFC_PROCESS_LA ;
 int LPFC_SLI3_HBQ_ENABLED ;
 int LPFC_SLI_REV3 ;
 int SLI2_IOCB_CMD_SIZE ;
 int SLI2_IOCB_RSP_SIZE ;
 int SLI3_IOCB_CMD_SIZE ;
 int SLI3_IOCB_RSP_SIZE ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int lpfc_config_port_post (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_sli_config_port (struct lpfc_hba*,int) ;
 int lpfc_sli_hbq_setup (struct lpfc_hba*) ;
 int lpfc_sli_ring_map (struct lpfc_hba*) ;
 int pci_enable_pcie_error_reporting (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_sli_hba_setup(struct lpfc_hba *phba)
{
 uint32_t rc;
 int mode = 3, i;
 int longs;

 switch (phba->cfg_sli_mode) {
 case 2:
  if (phba->cfg_enable_npiv) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT | LOG_VPORT,
    "1824 NPIV enabled: Override sli_mode "
    "parameter (%d) to auto (0).\n",
    phba->cfg_sli_mode);
   break;
  }
  mode = 2;
  break;
 case 0:
 case 3:
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT | LOG_VPORT,
    "1819 Unrecognized sli_mode parameter: %d.\n",
    phba->cfg_sli_mode);

  break;
 }
 phba->fcp_embed_io = 0;

 rc = lpfc_sli_config_port(phba, mode);

 if (rc && phba->cfg_sli_mode == 3)
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT | LOG_VPORT,
    "1820 Unable to select SLI-3.  "
    "Not supported by adapter.\n");
 if (rc && mode != 2)
  rc = lpfc_sli_config_port(phba, 2);
 else if (rc && mode == 2)
  rc = lpfc_sli_config_port(phba, 3);
 if (rc)
  goto lpfc_sli_hba_setup_error;


 if (phba->cfg_aer_support == 1 && !(phba->hba_flag & HBA_AER_ENABLED)) {
  rc = pci_enable_pcie_error_reporting(phba->pcidev);
  if (!rc) {
   lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
     "2709 This device supports "
     "Advanced Error Reporting (AER)\n");
   spin_lock_irq(&phba->hbalock);
   phba->hba_flag |= HBA_AER_ENABLED;
   spin_unlock_irq(&phba->hbalock);
  } else {
   lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
     "2708 This device does not support "
     "Advanced Error Reporting (AER): %d\n",
     rc);
   phba->cfg_aer_support = 0;
  }
 }

 if (phba->sli_rev == 3) {
  phba->iocb_cmd_size = SLI3_IOCB_CMD_SIZE;
  phba->iocb_rsp_size = SLI3_IOCB_RSP_SIZE;
 } else {
  phba->iocb_cmd_size = SLI2_IOCB_CMD_SIZE;
  phba->iocb_rsp_size = SLI2_IOCB_RSP_SIZE;
  phba->sli3_options = 0;
 }

 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "0444 Firmware in SLI %x mode. Max_vpi %d\n",
   phba->sli_rev, phba->max_vpi);
 rc = lpfc_sli_ring_map(phba);

 if (rc)
  goto lpfc_sli_hba_setup_error;


 if (phba->sli_rev == LPFC_SLI_REV3) {





  if ((phba->vpi_bmask == ((void*)0)) && (phba->vpi_ids == ((void*)0))) {
   longs = (phba->max_vpi + BITS_PER_LONG) / BITS_PER_LONG;
   phba->vpi_bmask = kcalloc(longs,
        sizeof(unsigned long),
        GFP_KERNEL);
   if (!phba->vpi_bmask) {
    rc = -ENOMEM;
    goto lpfc_sli_hba_setup_error;
   }

   phba->vpi_ids = kcalloc(phba->max_vpi + 1,
      sizeof(uint16_t),
      GFP_KERNEL);
   if (!phba->vpi_ids) {
    kfree(phba->vpi_bmask);
    rc = -ENOMEM;
    goto lpfc_sli_hba_setup_error;
   }
   for (i = 0; i < phba->max_vpi; i++)
    phba->vpi_ids[i] = i;
  }
 }


 if (phba->sli3_options & LPFC_SLI3_HBQ_ENABLED) {
  rc = lpfc_sli_hbq_setup(phba);
  if (rc)
   goto lpfc_sli_hba_setup_error;
 }
 spin_lock_irq(&phba->hbalock);
 phba->sli.sli_flag |= LPFC_PROCESS_LA;
 spin_unlock_irq(&phba->hbalock);

 rc = lpfc_config_port_post(phba);
 if (rc)
  goto lpfc_sli_hba_setup_error;

 return rc;

lpfc_sli_hba_setup_error:
 phba->link_state = LPFC_HBA_ERROR;
 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "0445 Firmware initialization failed\n");
 return rc;
}
