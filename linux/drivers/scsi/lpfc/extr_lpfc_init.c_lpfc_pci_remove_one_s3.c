
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct lpfc_vport {scalar_t__ port_type; int listentry; int fc_vport; int load_flag; struct lpfc_hba* phba; } ;
struct TYPE_4__ {int phys; int virt; } ;
struct TYPE_3__ {int phys; int virt; } ;
struct lpfc_hba {int max_vports; int slim_memmap_p; int ctrl_regs_memmap_p; TYPE_2__ slim2p; TYPE_1__ hbqslimp; scalar_t__ cfg_sriov_nr_virtfn; int port_list_lock; int vpi_ids; int vpi_bmask; int worker_thread; int hbalock; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int FC_UNLOADING ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 int SLI2_SLIM_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int fc_remove_host (struct Scsi_Host*) ;
 int fc_vport_terminate (int ) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int kthread_stop (int ) ;
 int list_del_init (int *) ;
 int lpfc_cleanup (struct lpfc_vport*) ;
 struct lpfc_vport** lpfc_create_vport_work_array (struct lpfc_hba*) ;
 int lpfc_debugfs_terminate (struct lpfc_vport*) ;
 int lpfc_destroy_vport_work_array (struct lpfc_hba*,struct lpfc_vport**) ;
 int lpfc_free_iocb_list (struct lpfc_hba*) ;
 int lpfc_free_sysfs_attr (struct lpfc_vport*) ;
 int lpfc_hba_free (struct lpfc_hba*) ;
 int lpfc_mem_free_all (struct lpfc_hba*) ;
 int lpfc_scsi_free (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_sli_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli_hba_down (struct lpfc_hba*) ;
 int lpfc_sli_hbq_size () ;
 int lpfc_stop_hba_timers (struct lpfc_hba*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_pci_remove_one_s3(struct pci_dev *pdev)
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
 lpfc_sli_hba_down(phba);

 kthread_stop(phba->worker_thread);

 lpfc_sli_brdrestart(phba);

 kfree(phba->vpi_bmask);
 kfree(phba->vpi_ids);

 lpfc_stop_hba_timers(phba);
 spin_lock_irq(&phba->port_list_lock);
 list_del_init(&vport->listentry);
 spin_unlock_irq(&phba->port_list_lock);

 lpfc_debugfs_terminate(vport);


 if (phba->cfg_sriov_nr_virtfn)
  pci_disable_sriov(pdev);


 lpfc_sli_disable_intr(phba);

 scsi_host_put(shost);





 lpfc_scsi_free(phba);
 lpfc_free_iocb_list(phba);

 lpfc_mem_free_all(phba);

 dma_free_coherent(&pdev->dev, lpfc_sli_hbq_size(),
     phba->hbqslimp.virt, phba->hbqslimp.phys);


 dma_free_coherent(&pdev->dev, SLI2_SLIM_SIZE,
     phba->slim2p.virt, phba->slim2p.phys);


 iounmap(phba->ctrl_regs_memmap_p);
 iounmap(phba->slim_memmap_p);

 lpfc_hba_free(phba);

 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
