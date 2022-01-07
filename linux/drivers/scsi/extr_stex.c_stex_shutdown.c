
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_hba {int supports_pm; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ S6flag ;
 int ST_IGNORED ;
 int ST_S5 ;
 int ST_S6 ;
 struct st_hba* pci_get_drvdata (struct pci_dev*) ;
 int stex_hba_stop (struct st_hba*,int ) ;
 int stex_notifier ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static void stex_shutdown(struct pci_dev *pdev)
{
 struct st_hba *hba = pci_get_drvdata(pdev);

 if (hba->supports_pm == 0) {
  stex_hba_stop(hba, ST_IGNORED);
 } else if (hba->supports_pm == 1 && S6flag) {
  unregister_reboot_notifier(&stex_notifier);
  stex_hba_stop(hba, ST_S6);
 } else
  stex_hba_stop(hba, ST_S5);
}
