
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;
struct pci_dev {int dummy; } ;


 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void rtw_pci_declaim(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
 pci_clear_master(pdev);
 pci_disable_device(pdev);
}
