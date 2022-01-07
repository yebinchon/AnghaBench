
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_6__ {int dma; int va; int size; } ;
struct TYPE_7__ {TYPE_2__ mbox_mem_alloced; } ;
struct TYPE_5__ {int boot_kset; } ;
struct beiscsi_hba {int shost; TYPE_4__* pcidev; TYPE_3__ ctrl; int wq; TYPE_1__ boot_struct; int sess_work; int recover_port; int hw_check; } ;
struct TYPE_8__ {int dev; } ;


 int beiscsi_disable_port (struct beiscsi_hba*,int) ;
 int beiscsi_free_mem (struct beiscsi_hba*) ;
 int beiscsi_iface_destroy_default (struct beiscsi_hba*) ;
 int beiscsi_unmap_pci_function (struct beiscsi_hba*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int iscsi_boot_destroy_kset (int ) ;
 int iscsi_host_free (int ) ;
 int iscsi_host_remove (int ) ;
 int pci_dev_put (TYPE_4__*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct beiscsi_hba* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void beiscsi_remove(struct pci_dev *pcidev)
{
 struct beiscsi_hba *phba = ((void*)0);

 phba = pci_get_drvdata(pcidev);
 if (!phba) {
  dev_err(&pcidev->dev, "beiscsi_remove called with no phba\n");
  return;
 }


 del_timer_sync(&phba->hw_check);
 cancel_delayed_work_sync(&phba->recover_port);
 cancel_work_sync(&phba->sess_work);

 beiscsi_iface_destroy_default(phba);
 iscsi_host_remove(phba->shost);
 beiscsi_disable_port(phba, 1);


 iscsi_boot_destroy_kset(phba->boot_struct.boot_kset);


 destroy_workqueue(phba->wq);
 beiscsi_free_mem(phba);


 beiscsi_unmap_pci_function(phba);
 dma_free_coherent(&phba->pcidev->dev,
       phba->ctrl.mbox_mem_alloced.size,
       phba->ctrl.mbox_mem_alloced.va,
       phba->ctrl.mbox_mem_alloced.dma);

 pci_dev_put(phba->pcidev);
 iscsi_host_free(phba->shost);
 pci_disable_pcie_error_reporting(pcidev);
 pci_set_drvdata(pcidev, ((void*)0));
 pci_release_regions(pcidev);
 pci_disable_device(pcidev);
}
