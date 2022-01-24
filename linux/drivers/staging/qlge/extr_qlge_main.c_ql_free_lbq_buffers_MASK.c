#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * page; int /*<<< orphan*/  map; } ;
struct rx_ring {size_t lbq_curr_idx; size_t lbq_clean_idx; size_t lbq_len; TYPE_3__ pg_chunk; struct bq_desc* lbq; } ;
struct ql_adapter {int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * page; scalar_t__ last_flag; int /*<<< orphan*/  map; } ;
struct TYPE_5__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*) ; 

__attribute__((used)) static void FUNC3(struct ql_adapter *qdev, struct rx_ring *rx_ring)
{
	struct bq_desc *lbq_desc;

	uint32_t  curr_idx, clean_idx;

	curr_idx = rx_ring->lbq_curr_idx;
	clean_idx = rx_ring->lbq_clean_idx;
	while (curr_idx != clean_idx) {
		lbq_desc = &rx_ring->lbq[curr_idx];

		if (lbq_desc->p.pg_chunk.last_flag) {
			FUNC0(qdev->pdev,
				lbq_desc->p.pg_chunk.map,
				FUNC2(qdev),
				       PCI_DMA_FROMDEVICE);
			lbq_desc->p.pg_chunk.last_flag = 0;
		}

		FUNC1(lbq_desc->p.pg_chunk.page);
		lbq_desc->p.pg_chunk.page = NULL;

		if (++curr_idx == rx_ring->lbq_len)
			curr_idx = 0;

	}
	if (rx_ring->pg_chunk.page) {
		FUNC0(qdev->pdev, rx_ring->pg_chunk.map,
			FUNC2(qdev), PCI_DMA_FROMDEVICE);
		FUNC1(rx_ring->pg_chunk.page);
		rx_ring->pg_chunk.page = NULL;
	}
}