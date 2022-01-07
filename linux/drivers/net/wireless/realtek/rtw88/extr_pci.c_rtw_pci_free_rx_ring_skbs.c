
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct TYPE_2__ {int len; } ;
struct rtw_pci_rx_ring {struct sk_buff** buf; TYPE_1__ r; } ;
struct rtw_dev {int dev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int PCI_DMA_FROMDEVICE ;
 int RTK_PCI_RX_BUF_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (struct pci_dev*,int ,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void rtw_pci_free_rx_ring_skbs(struct rtw_dev *rtwdev,
          struct rtw_pci_rx_ring *rx_ring)
{
 struct pci_dev *pdev = to_pci_dev(rtwdev->dev);
 struct sk_buff *skb;
 int buf_sz = RTK_PCI_RX_BUF_SIZE;
 dma_addr_t dma;
 int i;

 for (i = 0; i < rx_ring->r.len; i++) {
  skb = rx_ring->buf[i];
  if (!skb)
   continue;

  dma = *((dma_addr_t *)skb->cb);
  pci_unmap_single(pdev, dma, buf_sz, PCI_DMA_FROMDEVICE);
  dev_kfree_skb(skb);
  rx_ring->buf[i] = ((void*)0);
 }
}
