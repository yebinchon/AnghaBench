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
struct TYPE_2__ {int* head; int len; int desc_size; scalar_t__ rp; scalar_t__ wp; int /*<<< orphan*/  dma; } ;
struct rtw_pci_tx_ring {TYPE_1__ r; int /*<<< orphan*/  queue; } ;
struct rtw_dev {int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int* FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rtw_dev *rtwdev,
				struct rtw_pci_tx_ring *tx_ring,
				u8 desc_size, u32 len)
{
	struct pci_dev *pdev = FUNC3(rtwdev->dev);
	int ring_sz = desc_size * len;
	dma_addr_t dma;
	u8 *head;

	head = FUNC0(pdev, ring_sz, &dma);
	if (!head) {
		FUNC1(rtwdev, "failed to allocate tx ring\n");
		return -ENOMEM;
	}

	FUNC2(&tx_ring->queue);
	tx_ring->r.head = head;
	tx_ring->r.dma = dma;
	tx_ring->r.len = len;
	tx_ring->r.desc_size = desc_size;
	tx_ring->r.wp = 0;
	tx_ring->r.rp = 0;

	return 0;
}