
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_pci {scalar_t__ mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;


 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void rtw_pci_io_unmapping(struct rtw_dev *rtwdev,
     struct pci_dev *pdev)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 if (rtwpci->mmap) {
  pci_iounmap(pdev, rtwpci->mmap);
  pci_release_regions(pdev);
 }
}
