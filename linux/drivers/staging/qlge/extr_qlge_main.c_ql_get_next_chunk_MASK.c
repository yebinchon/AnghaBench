#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {scalar_t__ offset; int last_flag; int /*<<< orphan*/ * page; int /*<<< orphan*/  va; int /*<<< orphan*/  map; } ;
struct rx_ring {scalar_t__ lbq_buf_size; TYPE_1__ pg_chunk; } ;
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  lbq_buf_order; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ql_adapter*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ql_adapter *qdev, struct rx_ring *rx_ring,
						struct bq_desc *lbq_desc)
{
	if (!rx_ring->pg_chunk.page) {
		u64 map;
		rx_ring->pg_chunk.page = FUNC1(__GFP_COMP | GFP_ATOMIC,
						qdev->lbq_buf_order);
		if (FUNC8(!rx_ring->pg_chunk.page)) {
			FUNC3(qdev, drv, qdev->ndev,
				  "page allocation failed.\n");
			return -ENOMEM;
		}
		rx_ring->pg_chunk.offset = 0;
		map = FUNC6(qdev->pdev, rx_ring->pg_chunk.page,
					0, FUNC7(qdev),
					PCI_DMA_FROMDEVICE);
		if (FUNC5(qdev->pdev, map)) {
			FUNC0(rx_ring->pg_chunk.page,
					qdev->lbq_buf_order);
			rx_ring->pg_chunk.page = NULL;
			FUNC3(qdev, drv, qdev->ndev,
				  "PCI mapping failed.\n");
			return -ENOMEM;
		}
		rx_ring->pg_chunk.map = map;
		rx_ring->pg_chunk.va = FUNC4(rx_ring->pg_chunk.page);
	}

	/* Copy the current master pg_chunk info
	 * to the current descriptor.
	 */
	lbq_desc->p.pg_chunk = rx_ring->pg_chunk;

	/* Adjust the master page chunk for next
	 * buffer get.
	 */
	rx_ring->pg_chunk.offset += rx_ring->lbq_buf_size;
	if (rx_ring->pg_chunk.offset == FUNC7(qdev)) {
		rx_ring->pg_chunk.page = NULL;
		lbq_desc->p.pg_chunk.last_flag = 1;
	} else {
		rx_ring->pg_chunk.va += rx_ring->lbq_buf_size;
		FUNC2(rx_ring->pg_chunk.page);
		lbq_desc->p.pg_chunk.last_flag = 0;
	}
	return 0;
}