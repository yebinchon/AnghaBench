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
struct rx_ring {int sbq_len; struct bq_desc* sbq; } ;
struct ql_adapter {int /*<<< orphan*/  pdev; int /*<<< orphan*/  ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * skb; } ;
struct bq_desc {TYPE_1__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ql_adapter *qdev, struct rx_ring *rx_ring)
{
	int i;
	struct bq_desc *sbq_desc;

	for (i = 0; i < rx_ring->sbq_len; i++) {
		sbq_desc = &rx_ring->sbq[i];
		if (sbq_desc == NULL) {
			FUNC3(qdev, ifup, qdev->ndev,
				  "sbq_desc %d is NULL.\n", i);
			return;
		}
		if (sbq_desc->p.skb) {
			FUNC4(qdev->pdev,
					 FUNC1(sbq_desc, mapaddr),
					 FUNC2(sbq_desc, maplen),
					 PCI_DMA_FROMDEVICE);
			FUNC0(sbq_desc->p.skb);
			sbq_desc->p.skb = NULL;
		}
	}
}