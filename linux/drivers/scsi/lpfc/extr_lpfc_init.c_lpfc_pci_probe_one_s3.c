
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct lpfc_vport {int dummy; } ;
struct TYPE_3__ {scalar_t__ sli_intr; } ;
struct TYPE_4__ {TYPE_1__ slistat; } ;
struct lpfc_hba {int intr_mode; TYPE_2__ sli; int cfg_use_msi; struct lpfc_vport* pport; int ModelDesc; int ModelName; } ;
struct Scsi_Host {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LPFC_INTR_ERROR ;
 int LPFC_IOCB_LIST_CNT ;
 scalar_t__ LPFC_MSIX_VECTORS ;
 int LPFC_PCI_DEV_LP ;
 int lpfc_alloc_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_api_table_setup (struct lpfc_hba*,int ) ;
 int lpfc_create_shost (struct lpfc_hba*) ;
 int lpfc_create_static_vport (struct lpfc_hba*) ;
 int lpfc_destroy_shost (struct lpfc_hba*) ;
 int lpfc_disable_pci_dev (struct lpfc_hba*) ;
 int lpfc_enable_pci_dev (struct lpfc_hba*) ;
 int lpfc_free_iocb_list (struct lpfc_hba*) ;
 int lpfc_free_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_get_hba_model_desc (struct lpfc_hba*,int ,int ) ;
 struct lpfc_hba* lpfc_hba_alloc (struct pci_dev*) ;
 int lpfc_hba_free (struct lpfc_hba*) ;
 int lpfc_init_iocb_list (struct lpfc_hba*,int ) ;
 int lpfc_log_intr_mode (struct lpfc_hba*,int ) ;
 int lpfc_post_init_setup (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_setup_driver_resource_phase2 (struct lpfc_hba*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli_driver_resource_setup (struct lpfc_hba*) ;
 int lpfc_sli_driver_resource_unset (struct lpfc_hba*) ;
 int lpfc_sli_enable_intr (struct lpfc_hba*,int ) ;
 scalar_t__ lpfc_sli_hba_setup (struct lpfc_hba*) ;
 int lpfc_sli_pci_mem_setup (struct lpfc_hba*) ;
 int lpfc_sli_pci_mem_unset (struct lpfc_hba*) ;
 int lpfc_stop_port (struct lpfc_hba*) ;
 int lpfc_unset_driver_resource_phase2 (struct lpfc_hba*) ;
 int lpfc_unset_hba (struct lpfc_hba*) ;
 int msleep (int) ;
 int scsi_host_put (struct Scsi_Host*) ;

__attribute__((used)) static int
lpfc_pci_probe_one_s3(struct pci_dev *pdev, const struct pci_device_id *pid)
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


 error = lpfc_api_table_setup(phba, LPFC_PCI_DEV_LP);
 if (error)
  goto out_disable_pci_dev;


 error = lpfc_sli_pci_mem_setup(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1402 Failed to set up pci memory space.\n");
  goto out_disable_pci_dev;
 }


 error = lpfc_sli_driver_resource_setup(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1404 Failed to set up driver resource.\n");
  goto out_unset_pci_mem_s3;
 }



 error = lpfc_init_iocb_list(phba, LPFC_IOCB_LIST_CNT);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1405 Failed to initialize iocb list.\n");
  goto out_unset_driver_resource_s3;
 }


 error = lpfc_setup_driver_resource_phase2(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1406 Failed to set up driver resource.\n");
  goto out_free_iocb_list;
 }


 lpfc_get_hba_model_desc(phba, phba->ModelName, phba->ModelDesc);


 error = lpfc_create_shost(phba);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1407 Failed to create scsi host.\n");
  goto out_unset_driver_resource;
 }


 vport = phba->pport;
 error = lpfc_alloc_sysfs_attr(vport);
 if (error) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1476 Failed to allocate sysfs attr\n");
  goto out_destroy_shost;
 }

 shost = lpfc_shost_from_vport(vport);

 cfg_mode = phba->cfg_use_msi;
 while (1) {

  lpfc_stop_port(phba);

  intr_mode = lpfc_sli_enable_intr(phba, cfg_mode);
  if (intr_mode == LPFC_INTR_ERROR) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0431 Failed to enable interrupt.\n");
   error = -ENODEV;
   goto out_free_sysfs_attr;
  }

  if (lpfc_sli_hba_setup(phba)) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "1477 Failed to set up hba\n");
   error = -ENODEV;
   goto out_remove_device;
  }


  msleep(50);

  if (intr_mode == 0 ||
      phba->sli.slistat.sli_intr > LPFC_MSIX_VECTORS) {

   phba->intr_mode = intr_mode;
   lpfc_log_intr_mode(phba, intr_mode);
   break;
  } else {
   lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
     "0447 Configure interrupt mode (%d) "
     "failed active interrupt test.\n",
     intr_mode);

   lpfc_sli_disable_intr(phba);

   cfg_mode = --intr_mode;
  }
 }


 lpfc_post_init_setup(phba);


 lpfc_create_static_vport(phba);

 return 0;

out_remove_device:
 lpfc_unset_hba(phba);
out_free_sysfs_attr:
 lpfc_free_sysfs_attr(vport);
out_destroy_shost:
 lpfc_destroy_shost(phba);
out_unset_driver_resource:
 lpfc_unset_driver_resource_phase2(phba);
out_free_iocb_list:
 lpfc_free_iocb_list(phba);
out_unset_driver_resource_s3:
 lpfc_sli_driver_resource_unset(phba);
out_unset_pci_mem_s3:
 lpfc_sli_pci_mem_unset(phba);
out_disable_pci_dev:
 lpfc_disable_pci_dev(phba);
 if (shost)
  scsi_host_put(shost);
out_free_phba:
 lpfc_hba_free(phba);
 return error;
}
