
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_pci {int irq_lock; int irq_enabled; } ;
struct rtw_dev {scalar_t__ priv; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int rtw_pci_disable_interrupt (struct rtw_dev*,struct rtw_pci*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t rtw_pci_interrupt_handler(int irq, void *dev)
{
 struct rtw_dev *rtwdev = dev;
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;

 spin_lock(&rtwpci->irq_lock);
 if (!rtwpci->irq_enabled)
  goto out;
 rtw_pci_disable_interrupt(rtwdev, rtwpci);
out:
 spin_unlock(&rtwpci->irq_lock);

 return IRQ_WAKE_THREAD;
}
