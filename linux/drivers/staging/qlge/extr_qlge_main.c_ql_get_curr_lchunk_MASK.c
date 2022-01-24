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
struct rx_ring {scalar_t__ lbq_buf_size; } ;
struct ql_adapter {int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {scalar_t__ offset; int /*<<< orphan*/  map; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct bq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct bq_desc* FUNC3 (struct rx_ring*) ; 
 scalar_t__ FUNC4 (struct ql_adapter*) ; 

__attribute__((used)) static struct bq_desc *FUNC5(struct ql_adapter *qdev,
		struct rx_ring *rx_ring)
{
	struct bq_desc *lbq_desc = FUNC3(rx_ring);

	FUNC1(qdev->pdev,
					FUNC0(lbq_desc, mapaddr),
				    rx_ring->lbq_buf_size,
					PCI_DMA_FROMDEVICE);

	/* If it's the last chunk of our master page then
	 * we unmap it.
	 */
	if ((lbq_desc->p.pg_chunk.offset + rx_ring->lbq_buf_size)
					== FUNC4(qdev))
		FUNC2(qdev->pdev,
				lbq_desc->p.pg_chunk.map,
				FUNC4(qdev),
				PCI_DMA_FROMDEVICE);
	return lbq_desc;
}