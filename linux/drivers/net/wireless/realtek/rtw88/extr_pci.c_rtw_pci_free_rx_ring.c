
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int desc_size; int len; int dma; int * head; } ;
struct rtw_pci_rx_ring {TYPE_1__ r; } ;
struct rtw_dev {int dev; } ;
struct pci_dev {int dummy; } ;


 int pci_free_consistent (struct pci_dev*,int,int *,int ) ;
 int rtw_pci_free_rx_ring_skbs (struct rtw_dev*,struct rtw_pci_rx_ring*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void rtw_pci_free_rx_ring(struct rtw_dev *rtwdev,
     struct rtw_pci_rx_ring *rx_ring)
{
 struct pci_dev *pdev = to_pci_dev(rtwdev->dev);
 u8 *head = rx_ring->r.head;
 int ring_sz = rx_ring->r.desc_size * rx_ring->r.len;

 rtw_pci_free_rx_ring_skbs(rtwdev, rx_ring);

 pci_free_consistent(pdev, ring_sz, head, rx_ring->r.dma);
}
