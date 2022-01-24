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
struct sk_buff {int dummy; } ;
struct llt_ndlc {int /*<<< orphan*/  sm_work; int /*<<< orphan*/  send_q; } ;

/* Variables and functions */
 int PCB_DATAFRAME_RETRANSMIT_NO ; 
 int PCB_FRAME_CRC_INFO_NOTPRESENT ; 
 int PCB_TYPE_DATAFRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC3(struct llt_ndlc *ndlc, struct sk_buff *skb)
{
	/* add ndlc header */
	u8 pcb = PCB_TYPE_DATAFRAME | PCB_DATAFRAME_RETRANSMIT_NO |
		PCB_FRAME_CRC_INFO_NOTPRESENT;

	*(u8 *)FUNC1(skb, 1) = pcb;
	FUNC2(&ndlc->send_q, skb);

	FUNC0(&ndlc->sm_work);

	return 0;
}