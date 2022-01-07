
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {scalar_t__ port_type; int listentry; int fc_vport; int load_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {int max_vports; int port_list_lock; scalar_t__ cfg_xri_rebalancing; int hbalock; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int FC_UNLOADING ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 int fc_remove_host (struct Scsi_Host*) ;
 int fc_vport_terminate (int ) ;
 int list_del_init (int *) ;
 int lpfc_cleanup (struct lpfc_vport*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_debugfs_terminate (struct lpfc_vport*) ;
 int lpfc_destroy_multixri_pools (struct lpfc_hba*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_disable_pci_dev (struct lpfc_hba*) ;
 int lpfc_free_iocb_list (struct lpfc_hba*) ;
 int lpfc_free_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_hba_free (struct lpfc_hba*) ;
 int lpfc_io_free (struct lpfc_hba*) ;
 int lpfc_nvme_destroy_localport (struct lpfc_vport*) ;
 int lpfc_nvmet_destroy_targetport (struct lpfc_hba*) ;
 int lpfc_sli4_driver_resource_unset (struct lpfc_hba*) ;
 int lpfc_sli4_hba_unset (struct lpfc_hba*) ;
 int lpfc_sli4_pci_mem_unset (struct lpfc_hba*) ;
 int lpfc_stop_hba_timers (struct lpfc_hba*) ;
 int lpfc_unset_driver_resource_phase2 (struct lpfc_hba*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_pci_remove_one_s4(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_vport **vports;
 struct lpfc_hba *phba = vport->phba;
 int i;


 spin_lock_irq(&phba->hbalock);
 vport->load_flag |= FC_UNLOADING;
 spin_unlock_irq(&phba->hbalock);


 lpfc_free_sysfs_attr(vport);


 vports = lpfc_create_vport_work_array(phba);
 if (vports != ((void*)0))
  for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++) {
   if (vports[i]->port_type == LPFC_PHYSICAL_PORT)
    continue;
   fc_vport_terminate(vports[i]->fc_vport);
  }
 lpfc_destroy_vport_work_array(phba, vports);


 fc_remove_host(shost);
 scsi_remove_host(shost);




 lpfc_cleanup(vport);
 lpfc_nvmet_destroy_targetport(phba);
 lpfc_nvme_destroy_localport(vport);


 if (phba->cfg_xri_rebalancing)
  lpfc_destroy_multixri_pools(phba);






 lpfc_debugfs_terminate(vport);

 lpfc_stop_hba_timers(phba);
 spin_lock_irq(&phba->port_list_lock);
 list_del_init(&vport->listentry);
 spin_unlock_irq(&phba->port_list_lock);




 lpfc_io_free(phba);
 lpfc_free_iocb_list(phba);
 lpfc_sli4_hba_unset(phba);

 lpfc_unset_driver_resource_phase2(phba);
 lpfc_sli4_driver_resource_unset(phba);


 lpfc_sli4_pci_mem_unset(phba);


 scsi_host_put(shost);
 lpfc_disable_pci_dev(phba);


 lpfc_hba_free(phba);

 return;
}
