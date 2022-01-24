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
struct sk_buff {int dummy; } ;
struct llt_ndlc {int /*<<< orphan*/  sm_work; int /*<<< orphan*/  rcv_q; int /*<<< orphan*/  hard_fault; } ;

/* Variables and functions */
 int /*<<< orphan*/  EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct llt_ndlc*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC5(struct llt_ndlc *ndlc, struct sk_buff *skb)
{
	if (skb == NULL) {
		FUNC2("NULL Frame -> link is dead\n");
		ndlc->hard_fault = -EREMOTEIO;
		FUNC1(ndlc);
	} else {
		FUNC0("incoming frame", skb);
		FUNC4(&ndlc->rcv_q, skb);
	}

	FUNC3(&ndlc->sm_work);
}