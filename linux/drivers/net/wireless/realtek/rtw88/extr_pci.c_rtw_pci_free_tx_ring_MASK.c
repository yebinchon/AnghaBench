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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int len; int desc_size; int /*<<< orphan*/ * head; int /*<<< orphan*/  dma; } ;
struct rtw_pci_tx_ring {TYPE_1__ r; } ;
struct rtw_dev {int /*<<< orphan*/  dev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,struct rtw_pci_tx_ring*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev,
				 struct rtw_pci_tx_ring *tx_ring)
{
	struct pci_dev *pdev = FUNC2(rtwdev->dev);
	u8 *head = tx_ring->r.head;
	u32 len = tx_ring->r.len;
	int ring_sz = len * tx_ring->r.desc_size;

	FUNC1(rtwdev, tx_ring);

	/* free the ring itself */
	FUNC0(pdev, ring_sz, head, tx_ring->r.dma);
	tx_ring->r.head = NULL;
}