#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ head; } ;
struct rtw_pci_rx_ring {TYPE_1__ r; } ;
struct rtw_pci_rx_buffer_desc {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf_size; } ;
struct rtw_dev {struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int RTK_PCI_RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_pci_rx_buffer_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev, dma_addr_t dma,
					struct rtw_pci_rx_ring *rx_ring,
					u32 idx, u32 desc_sz)
{
	struct device *dev = rtwdev->dev;
	struct rtw_pci_rx_buffer_desc *buf_desc;
	int buf_sz = RTK_PCI_RX_BUF_SIZE;

	FUNC2(dev, dma, buf_sz, DMA_FROM_DEVICE);

	buf_desc = (struct rtw_pci_rx_buffer_desc *)(rx_ring->r.head +
						     idx * desc_sz);
	FUNC3(buf_desc, 0, sizeof(*buf_desc));
	buf_desc->buf_size = FUNC0(RTK_PCI_RX_BUF_SIZE);
	buf_desc->dma = FUNC1(dma);
}