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
typedef  int u8 ;
struct sk_buff {int* data; } ;
struct llt_ndlc {int /*<<< orphan*/  send_q; int /*<<< orphan*/  ack_pending_q; } ;

/* Variables and functions */
 int PCB_DATAFRAME_RETRANSMIT_MASK ; 
 int PCB_DATAFRAME_RETRANSMIT_YES ; 
 int PCB_SUPERVISOR_RETRANSMIT_MASK ; 
 int PCB_SUPERVISOR_RETRANSMIT_YES ; 
#define  PCB_TYPE_DATAFRAME 129 
 int PCB_TYPE_MASK ; 
#define  PCB_TYPE_SUPERVISOR 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct llt_ndlc *ndlc)
{
	struct sk_buff *skb;
	u8 pcb;

	while ((skb = FUNC2(&ndlc->ack_pending_q))) {
		pcb = skb->data[0];
		switch (pcb & PCB_TYPE_MASK) {
		case PCB_TYPE_SUPERVISOR:
			skb->data[0] = (pcb & ~PCB_SUPERVISOR_RETRANSMIT_MASK) |
				PCB_SUPERVISOR_RETRANSMIT_YES;
			break;
		case PCB_TYPE_DATAFRAME:
			skb->data[0] = (pcb & ~PCB_DATAFRAME_RETRANSMIT_MASK) |
				PCB_DATAFRAME_RETRANSMIT_YES;
			break;
		default:
			FUNC1("UNKNOWN Packet Control Byte=%d\n", pcb);
			FUNC0(skb);
			continue;
		}
		FUNC3(&ndlc->send_q, skb);
	}
}