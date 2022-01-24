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
typedef  size_t u16 ;
struct xenvif_queue {TYPE_1__* vif; int /*<<< orphan*/ * mmap_pages; int /*<<< orphan*/ * grant_tx_handle; } ;
struct gnttab_unmap_grant_ref {int /*<<< orphan*/  status; int /*<<< orphan*/  handle; int /*<<< orphan*/  host_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 int /*<<< orphan*/  FUNC1 (struct gnttab_unmap_grant_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gnttab_unmap_grant_ref*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif_queue*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif_queue*,size_t) ; 

void FUNC6(struct xenvif_queue *queue, u16 pending_idx)
{
	int ret;
	struct gnttab_unmap_grant_ref tx_unmap_op;

	FUNC1(&tx_unmap_op,
			    FUNC3(queue, pending_idx),
			    GNTMAP_host_map,
			    queue->grant_tx_handle[pending_idx]);
	FUNC5(queue, pending_idx);

	ret = FUNC2(&tx_unmap_op, NULL,
				&queue->mmap_pages[pending_idx], 1);
	if (ret) {
		FUNC4(queue->vif->dev,
			   "Unmap fail: ret: %d pending_idx: %d host_addr: %llx handle: 0x%x status: %d\n",
			   ret,
			   pending_idx,
			   tx_unmap_op.host_addr,
			   tx_unmap_op.handle,
			   tx_unmap_op.status);
		FUNC0();
	}
}