
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtw_pci {scalar_t__ mmap; } ;
struct rtw_dev {scalar_t__ priv; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void rtw_pci_write8(struct rtw_dev *rtwdev, u32 addr, u8 val)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 writeb(val, rtwpci->mmap + addr);
}
