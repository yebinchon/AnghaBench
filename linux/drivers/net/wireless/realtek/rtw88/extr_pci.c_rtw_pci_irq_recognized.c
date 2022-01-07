
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_pci {int * irq_mask; } ;
struct rtw_dev {int dummy; } ;


 int RTK_PCI_HISR0 ;
 int RTK_PCI_HISR1 ;
 int RTK_PCI_HISR3 ;
 int rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw_pci_irq_recognized(struct rtw_dev *rtwdev,
       struct rtw_pci *rtwpci, u32 *irq_status)
{
 irq_status[0] = rtw_read32(rtwdev, RTK_PCI_HISR0);
 irq_status[1] = rtw_read32(rtwdev, RTK_PCI_HISR1);
 irq_status[3] = rtw_read32(rtwdev, RTK_PCI_HISR3);
 irq_status[0] &= rtwpci->irq_mask[0];
 irq_status[1] &= rtwpci->irq_mask[1];
 irq_status[3] &= rtwpci->irq_mask[3];
 rtw_write32(rtwdev, RTK_PCI_HISR0, irq_status[0]);
 rtw_write32(rtwdev, RTK_PCI_HISR1, irq_status[1]);
 rtw_write32(rtwdev, RTK_PCI_HISR3, irq_status[3]);
}
