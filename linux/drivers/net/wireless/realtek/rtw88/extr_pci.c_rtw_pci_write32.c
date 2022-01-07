
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtw_pci {scalar_t__ mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rtw_pci_write32(struct rtw_dev *rtwdev, u32 addr, u32 val)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 writel(val, rtwpci->mmap + addr);
}
