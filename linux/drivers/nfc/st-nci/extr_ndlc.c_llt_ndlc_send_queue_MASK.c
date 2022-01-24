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
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct llt_ndlc {int hard_fault; int t1_active; int t2_active; int /*<<< orphan*/  t2_timer; int /*<<< orphan*/  t1_timer; TYPE_2__ ack_pending_q; int /*<<< orphan*/  phy_id; TYPE_1__* ops; TYPE_3__ send_q; } ;
struct TYPE_4__ {int (* write ) (int /*<<< orphan*/ ,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int /*<<< orphan*/  NDLC_TIMER_T1 ; 
 int /*<<< orphan*/  NDLC_TIMER_T2 ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct llt_ndlc *ndlc)
{
	struct sk_buff *skb;
	int r;
	unsigned long time_sent;

	if (ndlc->send_q.qlen)
		FUNC3("sendQlen=%d unackQlen=%d\n",
			 ndlc->send_q.qlen, ndlc->ack_pending_q.qlen);

	while (ndlc->send_q.qlen) {
		skb = FUNC4(&ndlc->send_q);
		FUNC0("ndlc frame written", skb);
		r = ndlc->ops->write(ndlc->phy_id, skb);
		if (r < 0) {
			ndlc->hard_fault = r;
			break;
		}
		time_sent = jiffies;
		*(unsigned long *)skb->cb = time_sent;

		FUNC5(&ndlc->ack_pending_q, skb);

		/* start timer t1 for ndlc aknowledge */
		ndlc->t1_active = true;
		FUNC1(&ndlc->t1_timer, time_sent +
			FUNC2(NDLC_TIMER_T1));
		/* start timer t2 for chip availability */
		ndlc->t2_active = true;
		FUNC1(&ndlc->t2_timer, time_sent +
			FUNC2(NDLC_TIMER_T2));
	}
}