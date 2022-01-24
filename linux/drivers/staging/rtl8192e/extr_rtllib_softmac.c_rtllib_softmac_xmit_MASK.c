#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rtllib_txb {unsigned int queue_index; int nr_frags; TYPE_2__** fragments; } ;
struct TYPE_5__ {int /*<<< orphan*/  multicast; } ;
struct rtllib_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  rate; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* softmac_data_hard_start_xmit ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * skb_waitQ; scalar_t__ queue_stop; int /*<<< orphan*/  (* check_nic_enough_desc ) (int /*<<< orphan*/ ,unsigned int) ;TYPE_1__ stats; } ;
struct cb_desc {scalar_t__ bMulticast; } ;
struct TYPE_6__ {scalar_t__ cb; } ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_txb*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(struct rtllib_txb *txb, struct rtllib_device *ieee)
{

	unsigned int queue_index = txb->queue_index;
	unsigned long flags;
	int  i;
	struct cb_desc *tcb_desc = NULL;
	unsigned long queue_len = 0;

	FUNC5(&ieee->lock, flags);

	/* called with 2nd parm 0, no tx mgmt lock required */
	FUNC1(ieee, 0);

	/* update the tx status */
	tcb_desc = (struct cb_desc *)(txb->fragments[0]->cb +
		   MAX_DEV_ADDR_SIZE);
	if (tcb_desc->bMulticast)
		ieee->stats.multicast++;

	/* if xmit available, just xmit it immediately, else just insert it to
	 * the wait queue
	 */
	for (i = 0; i < txb->nr_frags; i++) {
		queue_len = FUNC3(&ieee->skb_waitQ[queue_index]);
		if ((queue_len  != 0) ||
		    (!ieee->check_nic_enough_desc(ieee->dev, queue_index)) ||
		    (ieee->queue_stop)) {
			/* insert the skb packet to the wait queue
			 * as for the completion function, it does not need
			 * to check it any more.
			 */
			if (queue_len < 200)
				FUNC4(&ieee->skb_waitQ[queue_index],
					       txb->fragments[i]);
			else
				FUNC0(txb->fragments[i]);
		} else {
			ieee->softmac_data_hard_start_xmit(
					txb->fragments[i],
					ieee->dev, ieee->rate);
		}
	}

	FUNC2(txb);

	FUNC6(&ieee->lock, flags);

}