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
struct urbp {int dummy; } ;
struct tx_item {int /*<<< orphan*/  tx_entry; struct urbp* s; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TX_SUBMIT ; 
 int /*<<< orphan*/  VDEV_EVENT_ERROR_MALLOC ; 
 struct tx_item* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct vudc *udc, struct urbp *urb_p)
{
	struct tx_item *txi;

	txi = FUNC0(sizeof(*txi), GFP_ATOMIC);
	if (!txi) {
		FUNC2(&udc->ud, VDEV_EVENT_ERROR_MALLOC);
		return;
	}

	txi->type = TX_SUBMIT;
	txi->s = urb_p;

	FUNC1(&txi->tx_entry, &udc->tx_queue);
}