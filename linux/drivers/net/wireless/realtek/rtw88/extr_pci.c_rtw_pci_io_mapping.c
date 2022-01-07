
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_pci {int mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;
struct pci_dev {int dummy; } ;


 int ENOMEM ;
 int KBUILD_MODNAME ;
 int pci_iomap (struct pci_dev*,int,unsigned long) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 int rtw_err (struct rtw_dev*,char*) ;

__attribute__((used)) static int rtw_pci_io_mapping(struct rtw_dev *rtwdev,
         struct pci_dev *pdev)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
 unsigned long len;
 u8 bar_id = 2;
 int ret;

 ret = pci_request_regions(pdev, KBUILD_MODNAME);
 if (ret) {
  rtw_err(rtwdev, "failed to request pci regions\n");
  return ret;
 }

 len = pci_resource_len(pdev, bar_id);
 rtwpci->mmap = pci_iomap(pdev, bar_id, len);
 if (!rtwpci->mmap) {
  rtw_err(rtwdev, "failed to map pci memory\n");
  return -ENOMEM;
 }

 return 0;
}
