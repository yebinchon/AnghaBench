
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_hba {int mu_status; } ;
struct pci_dev {int dummy; } ;


 int MU_STATE_STARTING ;
 struct st_hba* pci_get_drvdata (struct pci_dev*) ;
 int stex_handshake (struct st_hba*) ;

__attribute__((used)) static int stex_resume(struct pci_dev *pdev)
{
 struct st_hba *hba = pci_get_drvdata(pdev);

 hba->mu_status = MU_STATE_STARTING;
 stex_handshake(hba);
 return 0;
}
