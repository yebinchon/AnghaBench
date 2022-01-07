
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_hba {int host; int mu_status; } ;
struct pci_dev {int dummy; } ;


 int DID_NO_CONNECT ;
 int MU_STATE_NOCONNECT ;
 int pci_disable_device (struct pci_dev*) ;
 struct st_hba* pci_get_drvdata (struct pci_dev*) ;
 int return_abnormal_state (struct st_hba*,int ) ;
 int scsi_block_requests (int ) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int stex_hba_free (struct st_hba*) ;
 int stex_notifier ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void stex_remove(struct pci_dev *pdev)
{
 struct st_hba *hba = pci_get_drvdata(pdev);

 hba->mu_status = MU_STATE_NOCONNECT;
 return_abnormal_state(hba, DID_NO_CONNECT);
 scsi_remove_host(hba->host);

 scsi_block_requests(hba->host);

 stex_hba_free(hba);

 scsi_host_put(hba->host);

 pci_disable_device(pdev);

 unregister_reboot_notifier(&stex_notifier);
}
