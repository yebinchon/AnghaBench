
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int* head; int len; int desc_size; scalar_t__ rp; scalar_t__ wp; int dma; } ;
struct rtw_pci_tx_ring {TYPE_1__ r; int queue; } ;
struct rtw_dev {int dev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int* pci_zalloc_consistent (struct pci_dev*,int,int *) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int skb_queue_head_init (int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int rtw_pci_init_tx_ring(struct rtw_dev *rtwdev,
    struct rtw_pci_tx_ring *tx_ring,
    u8 desc_size, u32 len)
{
 struct pci_dev *pdev = to_pci_dev(rtwdev->dev);
 int ring_sz = desc_size * len;
 dma_addr_t dma;
 u8 *head;

 head = pci_zalloc_consistent(pdev, ring_sz, &dma);
 if (!head) {
  rtw_err(rtwdev, "failed to allocate tx ring\n");
  return -ENOMEM;
 }

 skb_queue_head_init(&tx_ring->queue);
 tx_ring->r.head = head;
 tx_ring->r.dma = dma;
 tx_ring->r.len = len;
 tx_ring->r.desc_size = desc_size;
 tx_ring->r.wp = 0;
 tx_ring->r.rp = 0;

 return 0;
}
