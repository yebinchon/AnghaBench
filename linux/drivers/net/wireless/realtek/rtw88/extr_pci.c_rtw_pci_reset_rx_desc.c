
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ cb; int data; } ;
struct TYPE_2__ {scalar_t__ head; } ;
struct rtw_pci_rx_ring {TYPE_1__ r; } ;
struct rtw_pci_rx_buffer_desc {int dma; int buf_size; } ;
struct rtw_dev {int dev; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int EBUSY ;
 int EINVAL ;
 int PCI_DMA_FROMDEVICE ;
 int RTK_PCI_RX_BUF_SIZE ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int memset (struct rtw_pci_rx_buffer_desc*,int ,int) ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,int ,int,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int rtw_pci_reset_rx_desc(struct rtw_dev *rtwdev, struct sk_buff *skb,
     struct rtw_pci_rx_ring *rx_ring,
     u32 idx, u32 desc_sz)
{
 struct pci_dev *pdev = to_pci_dev(rtwdev->dev);
 struct rtw_pci_rx_buffer_desc *buf_desc;
 int buf_sz = RTK_PCI_RX_BUF_SIZE;
 dma_addr_t dma;

 if (!skb)
  return -EINVAL;

 dma = pci_map_single(pdev, skb->data, buf_sz, PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(pdev, dma))
  return -EBUSY;

 *((dma_addr_t *)skb->cb) = dma;
 buf_desc = (struct rtw_pci_rx_buffer_desc *)(rx_ring->r.head +
           idx * desc_sz);
 memset(buf_desc, 0, sizeof(*buf_desc));
 buf_desc->buf_size = cpu_to_le16(RTK_PCI_RX_BUF_SIZE);
 buf_desc->dma = cpu_to_le32(dma);

 return 0;
}
