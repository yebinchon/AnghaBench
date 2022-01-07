
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ head; } ;
struct rtw_pci_rx_ring {TYPE_1__ r; } ;
struct rtw_pci_rx_buffer_desc {int dma; int buf_size; } ;
struct rtw_dev {struct device* dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int RTK_PCI_RX_BUF_SIZE ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int dma_sync_single_for_device (struct device*,int ,int,int ) ;
 int memset (struct rtw_pci_rx_buffer_desc*,int ,int) ;

__attribute__((used)) static void rtw_pci_sync_rx_desc_device(struct rtw_dev *rtwdev, dma_addr_t dma,
     struct rtw_pci_rx_ring *rx_ring,
     u32 idx, u32 desc_sz)
{
 struct device *dev = rtwdev->dev;
 struct rtw_pci_rx_buffer_desc *buf_desc;
 int buf_sz = RTK_PCI_RX_BUF_SIZE;

 dma_sync_single_for_device(dev, dma, buf_sz, DMA_FROM_DEVICE);

 buf_desc = (struct rtw_pci_rx_buffer_desc *)(rx_ring->r.head +
           idx * desc_sz);
 memset(buf_desc, 0, sizeof(*buf_desc));
 buf_desc->buf_size = cpu_to_le16(RTK_PCI_RX_BUF_SIZE);
 buf_desc->dma = cpu_to_le32(dma);
}
