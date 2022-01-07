
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_pci {int irq_enabled; int * irq_mask; } ;
struct rtw_dev {int dummy; } ;


 int RTK_PCI_HIMR0 ;
 int RTK_PCI_HIMR1 ;
 int RTK_PCI_HIMR3 ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw_pci_enable_interrupt(struct rtw_dev *rtwdev,
         struct rtw_pci *rtwpci)
{
 rtw_write32(rtwdev, RTK_PCI_HIMR0, rtwpci->irq_mask[0]);
 rtw_write32(rtwdev, RTK_PCI_HIMR1, rtwpci->irq_mask[1]);
 rtw_write32(rtwdev, RTK_PCI_HIMR3, rtwpci->irq_mask[3]);
 rtwpci->irq_enabled = 1;
}
