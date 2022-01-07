
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ cb; int data; } ;
struct TYPE_2__ {int* head; int len; int desc_size; scalar_t__ rp; scalar_t__ wp; int dma; } ;
struct rtw_pci_rx_ring {struct sk_buff** buf; TYPE_1__ r; } ;
struct rtw_dev {int dev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PCI_DMA_FROMDEVICE ;
 int RTK_PCI_RX_BUF_SIZE ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int pci_free_consistent (struct pci_dev*,int,int*,int ) ;
 int pci_unmap_single (struct pci_dev*,int ,int,int ) ;
 int* pci_zalloc_consistent (struct pci_dev*,int,int *) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_pci_reset_rx_desc (struct rtw_dev*,struct sk_buff*,struct rtw_pci_rx_ring*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int rtw_pci_init_rx_ring(struct rtw_dev *rtwdev,
    struct rtw_pci_rx_ring *rx_ring,
    u8 desc_size, u32 len)
{
 struct pci_dev *pdev = to_pci_dev(rtwdev->dev);
 struct sk_buff *skb = ((void*)0);
 dma_addr_t dma;
 u8 *head;
 int ring_sz = desc_size * len;
 int buf_sz = RTK_PCI_RX_BUF_SIZE;
 int i, allocated;
 int ret = 0;

 head = pci_zalloc_consistent(pdev, ring_sz, &dma);
 if (!head) {
  rtw_err(rtwdev, "failed to allocate rx ring\n");
  return -ENOMEM;
 }
 rx_ring->r.head = head;

 for (i = 0; i < len; i++) {
  skb = dev_alloc_skb(buf_sz);
  if (!skb) {
   allocated = i;
   ret = -ENOMEM;
   goto err_out;
  }

  memset(skb->data, 0, buf_sz);
  rx_ring->buf[i] = skb;
  ret = rtw_pci_reset_rx_desc(rtwdev, skb, rx_ring, i, desc_size);
  if (ret) {
   allocated = i;
   dev_kfree_skb_any(skb);
   goto err_out;
  }
 }

 rx_ring->r.dma = dma;
 rx_ring->r.len = len;
 rx_ring->r.desc_size = desc_size;
 rx_ring->r.wp = 0;
 rx_ring->r.rp = 0;

 return 0;

err_out:
 for (i = 0; i < allocated; i++) {
  skb = rx_ring->buf[i];
  if (!skb)
   continue;
  dma = *((dma_addr_t *)skb->cb);
  pci_unmap_single(pdev, dma, buf_sz, PCI_DMA_FROMDEVICE);
  dev_kfree_skb_any(skb);
  rx_ring->buf[i] = ((void*)0);
 }
 pci_free_consistent(pdev, ring_sz, head, dma);

 rtw_err(rtwdev, "failed to init rx buffer\n");

 return ret;
}
