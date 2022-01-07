
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_pci {int irq_lock; } ;
struct rtw_dev {scalar_t__ priv; } ;
typedef int irqreturn_t ;


 int IMR_BEDOK ;
 int IMR_BKDOK ;
 int IMR_H2CDOK ;
 int IMR_HIGHDOK ;
 int IMR_MGNTDOK ;
 int IMR_ROK ;
 int IMR_VIDOK ;
 int IMR_VODOK ;
 int IRQ_HANDLED ;
 int RTW_RX_QUEUE_MPDU ;
 int RTW_TX_QUEUE_BE ;
 int RTW_TX_QUEUE_BK ;
 int RTW_TX_QUEUE_H2C ;
 int RTW_TX_QUEUE_HI0 ;
 int RTW_TX_QUEUE_MGMT ;
 int RTW_TX_QUEUE_VI ;
 int RTW_TX_QUEUE_VO ;
 int rtw_pci_enable_interrupt (struct rtw_dev*,struct rtw_pci*) ;
 int rtw_pci_irq_recognized (struct rtw_dev*,struct rtw_pci*,int*) ;
 int rtw_pci_rx_isr (struct rtw_dev*,struct rtw_pci*,int ) ;
 int rtw_pci_tx_isr (struct rtw_dev*,struct rtw_pci*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t rtw_pci_interrupt_threadfn(int irq, void *dev)
{
 struct rtw_dev *rtwdev = dev;
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
 unsigned long flags;
 u32 irq_status[4];

 spin_lock_irqsave(&rtwpci->irq_lock, flags);
 rtw_pci_irq_recognized(rtwdev, rtwpci, irq_status);

 if (irq_status[0] & IMR_MGNTDOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_MGMT);
 if (irq_status[0] & IMR_HIGHDOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_HI0);
 if (irq_status[0] & IMR_BEDOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_BE);
 if (irq_status[0] & IMR_BKDOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_BK);
 if (irq_status[0] & IMR_VODOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_VO);
 if (irq_status[0] & IMR_VIDOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_VI);
 if (irq_status[3] & IMR_H2CDOK)
  rtw_pci_tx_isr(rtwdev, rtwpci, RTW_TX_QUEUE_H2C);
 if (irq_status[0] & IMR_ROK)
  rtw_pci_rx_isr(rtwdev, rtwpci, RTW_RX_QUEUE_MPDU);


 rtw_pci_enable_interrupt(rtwdev, rtwpci);
 spin_unlock_irqrestore(&rtwpci->irq_lock, flags);

 return IRQ_HANDLED;
}
