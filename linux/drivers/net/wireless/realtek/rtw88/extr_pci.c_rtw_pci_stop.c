
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_pci {int irq_lock; } ;
struct rtw_dev {scalar_t__ priv; } ;


 int rtw_pci_disable_interrupt (struct rtw_dev*,struct rtw_pci*) ;
 int rtw_pci_dma_release (struct rtw_dev*,struct rtw_pci*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtw_pci_stop(struct rtw_dev *rtwdev)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
 unsigned long flags;

 spin_lock_irqsave(&rtwpci->irq_lock, flags);
 rtw_pci_disable_interrupt(rtwdev, rtwpci);
 rtw_pci_dma_release(rtwdev, rtwpci);
 spin_unlock_irqrestore(&rtwpci->irq_lock, flags);
}
