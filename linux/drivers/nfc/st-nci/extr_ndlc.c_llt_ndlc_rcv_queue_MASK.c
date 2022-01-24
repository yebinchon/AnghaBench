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
struct sk_buff {int* data; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct llt_ndlc {int t2_active; int t1_active; int /*<<< orphan*/  ndev; int /*<<< orphan*/  t1_timer; int /*<<< orphan*/  t2_timer; TYPE_1__ ack_pending_q; TYPE_1__ rcv_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDLC_TIMER_T1 ; 
 int /*<<< orphan*/  NDLC_TIMER_T1_WAIT ; 
#define  PCB_SYNC_ACK 130 
 int PCB_SYNC_MASK ; 
#define  PCB_SYNC_NACK 129 
#define  PCB_SYNC_WAIT 128 
 int PCB_TYPE_DATAFRAME ; 
 int PCB_TYPE_MASK ; 
 int PCB_TYPE_SUPERVISOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct llt_ndlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct llt_ndlc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 struct sk_buff* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC10(struct llt_ndlc *ndlc)
{
	struct sk_buff *skb;
	u8 pcb;
	unsigned long time_sent;

	if (ndlc->rcv_q.qlen)
		FUNC7("rcvQlen=%d\n", ndlc->rcv_q.qlen);

	while ((skb = FUNC8(&ndlc->rcv_q)) != NULL) {
		pcb = skb->data[0];
		FUNC9(skb, 1);
		if ((pcb & PCB_TYPE_MASK) == PCB_TYPE_SUPERVISOR) {
			switch (pcb & PCB_SYNC_MASK) {
			case PCB_SYNC_ACK:
				skb = FUNC8(&ndlc->ack_pending_q);
				FUNC1(skb);
				FUNC0(&ndlc->t1_timer);
				FUNC0(&ndlc->t2_timer);
				ndlc->t2_active = false;
				ndlc->t1_active = false;
				break;
			case PCB_SYNC_NACK:
				FUNC2(ndlc);
				FUNC3(ndlc);
				/* start timer t1 for ndlc aknowledge */
				time_sent = jiffies;
				ndlc->t1_active = true;
				FUNC4(&ndlc->t1_timer, time_sent +
					FUNC5(NDLC_TIMER_T1));
				break;
			case PCB_SYNC_WAIT:
				time_sent = jiffies;
				ndlc->t1_active = true;
				FUNC4(&ndlc->t1_timer, time_sent +
					  FUNC5(NDLC_TIMER_T1_WAIT));
				break;
			default:
				FUNC1(skb);
				break;
			}
		} else if ((pcb & PCB_TYPE_MASK) == PCB_TYPE_DATAFRAME) {
			FUNC6(ndlc->ndev, skb);
		} else {
			FUNC1(skb);
		}
	}
}