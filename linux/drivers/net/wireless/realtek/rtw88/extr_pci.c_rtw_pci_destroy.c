
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;
struct pci_dev {int dummy; } ;


 int rtw_pci_deinit (struct rtw_dev*) ;
 int rtw_pci_io_unmapping (struct rtw_dev*,struct pci_dev*) ;

__attribute__((used)) static void rtw_pci_destroy(struct rtw_dev *rtwdev, struct pci_dev *pdev)
{
 rtw_pci_deinit(rtwdev);
 rtw_pci_io_unmapping(rtwdev, pdev);
}
