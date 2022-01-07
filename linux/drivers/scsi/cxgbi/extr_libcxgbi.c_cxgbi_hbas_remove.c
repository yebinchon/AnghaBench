
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_hba {int shost; } ;
struct cxgbi_device {int nports; int pdev; struct cxgbi_hba** hbas; } ;


 int CXGBI_DBG_DEV ;
 int iscsi_host_free (int ) ;
 int iscsi_host_remove (int ) ;
 int log_debug (int,char*,struct cxgbi_device*,int) ;
 int pci_dev_put (int ) ;

void cxgbi_hbas_remove(struct cxgbi_device *cdev)
{
 int i;
 struct cxgbi_hba *chba;

 log_debug(1 << CXGBI_DBG_DEV,
  "cdev 0x%p, p#%u.\n", cdev, cdev->nports);

 for (i = 0; i < cdev->nports; i++) {
  chba = cdev->hbas[i];
  if (chba) {
   cdev->hbas[i] = ((void*)0);
   iscsi_host_remove(chba->shost);
   pci_dev_put(cdev->pdev);
   iscsi_host_free(chba->shost);
  }
 }
}
