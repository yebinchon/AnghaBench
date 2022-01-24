#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vudc {int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  ud; } ;
struct v_unlink {void* status; void* seqnum; } ;
struct tx_item {int /*<<< orphan*/  tx_entry; struct v_unlink* u; int /*<<< orphan*/  type; } ;
typedef  void* __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TX_UNLINK ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_MALLOC ; 
 int /*<<< orphan*/  FUNC0 (struct tx_item*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct vudc *udc, __u32 seqnum, __u32 status)
{
	struct tx_item *txi;
	struct v_unlink *unlink;

	txi = FUNC1(sizeof(*txi), GFP_ATOMIC);
	if (!txi) {
		FUNC3(&udc->ud, VDEV_EVENT_ERROR_MALLOC);
		return;
	}
	unlink = FUNC1(sizeof(*unlink), GFP_ATOMIC);
	if (!unlink) {
		FUNC0(txi);
		FUNC3(&udc->ud, VDEV_EVENT_ERROR_MALLOC);
		return;
	}

	unlink->seqnum = seqnum;
	unlink->status = status;
	txi->type = TX_UNLINK;
	txi->u = unlink;

	FUNC2(&txi->tx_entry, &udc->tx_queue);
}