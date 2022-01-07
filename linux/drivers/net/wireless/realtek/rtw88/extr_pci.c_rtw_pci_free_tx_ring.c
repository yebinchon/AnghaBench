
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int len; int desc_size; int * head; int dma; } ;
struct rtw_pci_tx_ring {TYPE_1__ r; } ;
struct rtw_dev {int dev; } ;
struct pci_dev {int dummy; } ;


 int pci_free_consistent (struct pci_dev*,int,int *,int ) ;
 int rtw_pci_free_tx_ring_skbs (struct rtw_dev*,struct rtw_pci_tx_ring*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void rtw_pci_free_tx_ring(struct rtw_dev *rtwdev,
     struct rtw_pci_tx_ring *tx_ring)
{
 struct pci_dev *pdev = to_pci_dev(rtwdev->dev);
 u8 *head = tx_ring->r.head;
 u32 len = tx_ring->r.len;
 int ring_sz = len * tx_ring->r.desc_size;

 rtw_pci_free_tx_ring_skbs(rtwdev, tx_ring);


 pci_free_consistent(pdev, ring_sz, head, tx_ring->r.dma);
 tx_ring->r.head = ((void*)0);
}
