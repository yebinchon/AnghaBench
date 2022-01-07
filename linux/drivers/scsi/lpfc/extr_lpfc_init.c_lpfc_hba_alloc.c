
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct lpfc_hba {scalar_t__ brd_no; int ct_ev_waiters; int ct_ev_lock; int eratt_poll_interval; struct pci_dev* pcidev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LPFC_ERATT_POLL_INTERVAL ;
 int dev_err (int *,char*) ;
 int kfree (struct lpfc_hba*) ;
 struct lpfc_hba* kzalloc (int,int ) ;
 scalar_t__ lpfc_get_instance () ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct lpfc_hba *
lpfc_hba_alloc(struct pci_dev *pdev)
{
 struct lpfc_hba *phba;


 phba = kzalloc(sizeof(struct lpfc_hba), GFP_KERNEL);
 if (!phba) {
  dev_err(&pdev->dev, "failed to allocate hba struct\n");
  return ((void*)0);
 }


 phba->pcidev = pdev;


 phba->brd_no = lpfc_get_instance();
 if (phba->brd_no < 0) {
  kfree(phba);
  return ((void*)0);
 }
 phba->eratt_poll_interval = LPFC_ERATT_POLL_INTERVAL;

 spin_lock_init(&phba->ct_ev_lock);
 INIT_LIST_HEAD(&phba->ct_ev_waiters);

 return phba;
}
