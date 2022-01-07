
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct lpfc_vport {int dummy; } ;
struct TYPE_2__ {int fcf_pri_list; } ;
struct lpfc_hba {scalar_t__ cfg_use_msi; scalar_t__ intr_type; int cfg_irq_chann; int cfg_enable_fc4_type; scalar_t__ nvmet_support; int cfg_nvmet_mrq; scalar_t__ cfg_request_firmware_upgrade; scalar_t__ intr_mode; struct lpfc_vport* pport; int ModelDesc; int ModelName; TYPE_1__ fcf; int active_rrq_list; } ;
struct Scsi_Host {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INT_FW_UPGRADE ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_ENABLE_NVME ;
 scalar_t__ LPFC_INTR_ERROR ;
 int LPFC_PCI_DEV_OC ;
 scalar_t__ MSIX ;
 int lpfc_alloc_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_api_table_setup (struct lpfc_hba*,int ) ;
 int lpfc_cpu_affinity_check (struct lpfc_hba*,int) ;
 int lpfc_create_shost (struct lpfc_hba*) ;
 int lpfc_create_static_vport (struct lpfc_hba*) ;
 int lpfc_destroy_shost (struct lpfc_hba*) ;
 int lpfc_disable_pci_dev (struct lpfc_hba*) ;
 int lpfc_enable_pci_dev (struct lpfc_hba*) ;
 int lpfc_free_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_get_hba_model_desc (struct lpfc_hba*,int ,int ) ;
 struct lpfc_hba* lpfc_hba_alloc (struct pci_dev*) ;
 int lpfc_hba_free (struct lpfc_hba*) ;
 int lpfc_log_intr_mode (struct lpfc_hba*,scalar_t__) ;
 int lpfc_nvme_create_localport (struct lpfc_vport*) ;
 int lpfc_post_init_setup (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_setup_driver_resource_phase2 (struct lpfc_hba*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli4_driver_resource_setup (struct lpfc_hba*) ;
 int lpfc_sli4_driver_resource_unset (struct lpfc_hba*) ;
 scalar_t__ lpfc_sli4_enable_intr (struct lpfc_hba*,scalar_t__) ;
 scalar_t__ lpfc_sli4_hba_setup (struct lpfc_hba*) ;
 int lpfc_sli4_pci_mem_setup (struct lpfc_hba*) ;
 int lpfc_sli4_pci_mem_unset (struct lpfc_hba*) ;
 int lpfc_sli4_ras_setup (struct lpfc_hba*) ;
 int lpfc_sli4_request_firmware_update (struct lpfc_hba*,int ) ;
 int lpfc_stop_port (struct lpfc_hba*) ;
 int lpfc_unset_driver_resource_phase2 (struct lpfc_hba*) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static int
lpfc_pci_probe_one_s4(struct pci_dev *pdev, const struct pci_device_id *pid)
{
 struct lpfc_hba *phba;
 struct lpfc_vport *vport = ((void*)0);
 struct Scsi_Host *shost = ((void*)0);
 int error;
 uint32_t cfg_mode, intr_mode;


 phba = lpfc_hba_alloc(pdev);
 if (!phba)
  return -ENOMEM;


 error = lpfc_enable_pci_dev(phba);
 if (error)
  goto out_free_phba;


 error = lpfc_api_table_setup(phba, LPFC_PCI_DEV_OC);
 if (error)
  goto out_disable_pci_dev;


 error = lpfc_sli4_pci_mem_setup(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1410 Failed to set up pci memory space.\n");
  goto out_disable_pci_dev;
 }


 error = lpfc_sli4_driver_resource_setup(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1412 Failed to set up driver resource.\n");
  goto out_unset_pci_mem_s4;
 }

 INIT_LIST_HEAD(&phba->active_rrq_list);
 INIT_LIST_HEAD(&phba->fcf.fcf_pri_list);


 error = lpfc_setup_driver_resource_phase2(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1414 Failed to set up driver resource.\n");
  goto out_unset_driver_resource_s4;
 }


 lpfc_get_hba_model_desc(phba, phba->ModelName, phba->ModelDesc);


 cfg_mode = phba->cfg_use_msi;


 phba->pport = ((void*)0);
 lpfc_stop_port(phba);


 intr_mode = lpfc_sli4_enable_intr(phba, cfg_mode);
 if (intr_mode == LPFC_INTR_ERROR) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0426 Failed to enable interrupt.\n");
  error = -ENODEV;
  goto out_unset_driver_resource;
 }

 if (phba->intr_type != MSIX) {
  phba->cfg_irq_chann = 1;
  if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {
   if (phba->nvmet_support)
    phba->cfg_nvmet_mrq = 1;
  }
 }
 lpfc_cpu_affinity_check(phba, phba->cfg_irq_chann);


 error = lpfc_create_shost(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1415 Failed to create scsi host.\n");
  goto out_disable_intr;
 }
 vport = phba->pport;
 shost = lpfc_shost_from_vport(vport);


 error = lpfc_alloc_sysfs_attr(vport);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1416 Failed to allocate sysfs attr\n");
  goto out_destroy_shost;
 }


 if (lpfc_sli4_hba_setup(phba)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1421 Failed to set up hba\n");
  error = -ENODEV;
  goto out_free_sysfs_attr;
 }


 phba->intr_mode = intr_mode;
 lpfc_log_intr_mode(phba, intr_mode);


 lpfc_post_init_setup(phba);




 if (phba->nvmet_support == 0) {
  if (phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) {





   error = lpfc_nvme_create_localport(vport);
   if (error) {
    lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
      "6004 NVME registration "
      "failed, error x%x\n",
      error);
   }
  }
 }


 if (phba->cfg_request_firmware_upgrade)
  lpfc_sli4_request_firmware_update(phba, INT_FW_UPGRADE);


 lpfc_create_static_vport(phba);


 lpfc_sli4_ras_setup(phba);

 return 0;

out_free_sysfs_attr:
 lpfc_free_sysfs_attr(vport);
out_destroy_shost:
 lpfc_destroy_shost(phba);
out_disable_intr:
 lpfc_sli4_disable_intr(phba);
out_unset_driver_resource:
 lpfc_unset_driver_resource_phase2(phba);
out_unset_driver_resource_s4:
 lpfc_sli4_driver_resource_unset(phba);
out_unset_pci_mem_s4:
 lpfc_sli4_pci_mem_unset(phba);
out_disable_pci_dev:
 lpfc_disable_pci_dev(phba);
 if (shost)
  scsi_host_put(shost);
out_free_phba:
 lpfc_hba_free(phba);
 return error;
}
