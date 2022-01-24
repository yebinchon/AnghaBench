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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {scalar_t__ cb; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int* head; int len; int desc_size; scalar_t__ rp; scalar_t__ wp; int /*<<< orphan*/  dma; } ;
struct rtw_pci_rx_ring {struct sk_buff** buf; TYPE_1__ r; } ;
struct rtw_dev {int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RTK_PCI_RX_BUF_SIZE ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int* FUNC5 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,char*) ; 
 int FUNC7 (struct rtw_dev*,struct sk_buff*,struct rtw_pci_rx_ring*,int,int) ; 
 struct pci_dev* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rtw_dev *rtwdev,
				struct rtw_pci_rx_ring *rx_ring,
				u8 desc_size, u32 len)
{
	struct pci_dev *pdev = FUNC8(rtwdev->dev);
	struct sk_buff *skb = NULL;
	dma_addr_t dma;
	u8 *head;
	int ring_sz = desc_size * len;
	int buf_sz = RTK_PCI_RX_BUF_SIZE;
	int i, allocated;
	int ret = 0;

	head = FUNC5(pdev, ring_sz, &dma);
	if (!head) {
		FUNC6(rtwdev, "failed to allocate rx ring\n");
		return -ENOMEM;
	}
	rx_ring->r.head = head;

	for (i = 0; i < len; i++) {
		skb = FUNC0(buf_sz);
		if (!skb) {
			allocated = i;
			ret = -ENOMEM;
			goto err_out;
		}

		FUNC2(skb->data, 0, buf_sz);
		rx_ring->buf[i] = skb;
		ret = FUNC7(rtwdev, skb, rx_ring, i, desc_size);
		if (ret) {
			allocated = i;
			FUNC1(skb);
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
		FUNC4(pdev, dma, buf_sz, PCI_DMA_FROMDEVICE);
		FUNC1(skb);
		rx_ring->buf[i] = NULL;
	}
	FUNC3(pdev, ring_sz, head, dma);

	FUNC6(rtwdev, "failed to init rx buffer\n");

	return ret;
}