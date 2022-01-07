
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct rtw_pci {scalar_t__ mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static u16 rtw_pci_read16(struct rtw_dev *rtwdev, u32 addr)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 return readw(rtwpci->mmap + addr);
}
