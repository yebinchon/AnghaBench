
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtw_pci {scalar_t__ mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static u8 rtw_pci_read8(struct rtw_dev *rtwdev, u32 addr)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 return readb(rtwpci->mmap + addr);
}
